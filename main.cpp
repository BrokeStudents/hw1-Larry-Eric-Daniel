#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <cmath>

using namespace std;

class Apportionment
{
public:
    Apportionment()
    {
        max_rep = 435;
    };
    ~Apportionment()
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

    void output()
    {
        int average = avgRepPerPop();

        for (int i = 0; i < 51; i++)
        {
            number_of_Representatives[i] = numbers[i] / static_cast<float>(average);
            floorValue[i] = floor(number_of_Representatives[i]);
            remainder[i] = number_of_Representatives[i] - floorValue[i];
            cout << '\n'
                 << rep[i] << " - "
                 << "Representatives: " << number_of_Representatives[i] << " floorValue : " << floorValue[i] << " remainder : " << remainder[i] << '\n';
            writeRecordToFile("Rep2020.csv", rep[i], i);
        }
    };

private:
    int max_rep;
    string fileName;
    ifstream input_file;
    ofstream output_file;
    vector<int> numbers;
    float number_of_Representatives[51];
    float remainder[51];
    int floorValue[51];
    vector<string> rep;

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
            else if (remainder[i] >= 0.5)
            {
                file << Field1 << "," << floorValue[i] + 1 << endl;
            }
            else
            {
                file << Field1 << "," << floorValue[i] << endl;
            }
        }
    }
};

int main()
{
    Apportionment test1;
    test1.input();
    test1.output();

    cout << '\n'
         << "Total Population: " << test1.totalPopulation();
    cout << '\n'
         << "Population average: " << test1.avgRepPerPop();
    return 0;
}