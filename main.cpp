#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <cmath>
using namespace std;

class BaseApportionment
{
public:
    virtual void input() = 0;
    int totalPopulation() const
    {
        int population = 0;
        for (auto it = numbers.begin(); it != numbers.end(); ++it)
        {
            population += *it;
        }
        return population;
    };
    int avgRepPerPop() const
    {
        int population = totalPopulation();
        return population / max_rep;
    };
    virtual void output() = 0;

protected:
    int max_rep;
    string fileName;
    ifstream input_file;
    ofstream output_file;

    vector<int> numbers;
    float number_of_Representatives[51];
    float remainder[51];
    int floorValue[51];
    vector<string> rep;
    virtual void writeRecordToFile(string file_name, string Field1, int i) = 0;
    int representativeLeft()
    {
        int totalRepresentatives = 0;
        for (int i = 0; i < 51; i++)
        {
            totalRepresentatives += floorValue[i];
        }
        int representativesLeft = max_rep - totalRepresentatives + 1;

        return representativesLeft;
    };
    virtual void distribute() = 0;
};
class HamiltonApportionment : public BaseApportionment
{
public:
    HamiltonApportionment()
    {
        max_rep = 435;
    };
    HamiltonApportionment(int max_number_of_representatives)
    {
        max_rep = max_number_of_representatives;
    };
    ~HamiltonApportionment()
    {
        input_file.close();
        output_file.close();
    };
    void input()
    {
        cout << "Enter the csv file name with .csv extension. " << endl;
        cin >> fileName;
        input_file.open(fileName);
        if (!input_file.is_open())
        {
            cout << "Error: File Failed to Open" << endl;
            exit(1);
        }
        while (input_file.good())
        {
            string line1;
            string line2;
            getline(input_file, line1, ',');
            getline(input_file, line2, '\n');
            rep.push_back(line1);
            numbers.push_back(atoi(line2.c_str()));
        }
    };
    void output()
    {
        distribute();
        for (int i = 0; i < 51; i++)
        {
            cout << '\n'
                 << rep[i] << " - "
                 << "Representatives: " << number_of_Representatives[i] << " floorValue : " << floorValue[i] << " remainder : " << remainder[i] << '\n';
            writeRecordToFile("Rep2020.csv", rep[i], i);
        }
    };

private:
    void writeRecordToFile(string file_name, string Field1, int i)
    {
        ofstream file;
        file.open(file_name, ios_base::app);
        if (file.is_open())
        {
            if (i == 0)
            {
                file << "State,Representatives" << endl;
            }
            else
            {
                file << Field1 << "," << floorValue[i] << endl;
            }
        }
    }
    void distribute()
    {
        int states = 51;
        float copyRemainder[states];
        int average = avgRepPerPop();

        for (int i = 0; i < states; i++)
        {
            number_of_Representatives[i] = numbers[i] / average;
            remainder[i] = numbers[i] % average;
            floorValue[i] = floor(number_of_Representatives[i]);
        }
        int representativesLeft = representativeLeft();
        for (int i = 0; i < states; i++)
        {
            copyRemainder[i] = remainder[i];
        }
        while (representativesLeft > 0)
        {
            int max = 0;
            int index = 0;
            for (int i = 0; i < states; i++)
            {
                if (copyRemainder[i] > max)
                {
                    max = copyRemainder[i];
                    index = i;
                }
            }
            floorValue[index] += 1;
            copyRemainder[index] = 0;
            representativesLeft--;
        }
    }
};


int main()
{
    HamiltonApportionment test1;
    test1.input();
    test1.output();
    cout << '\n'
         << "Total Population: " << test1.totalPopulation();
    cout << '\n'
         << "Population average: " << test1.avgRepPerPop() << '\n';

    return 0;
}