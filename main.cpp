#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <algorithm>
#include <cmath>
#include <OpenXLSX.hpp>

using namespace OpenXLSX;
using namespace std;

class BaseApportionment
{
public:
    BaseApportionment()
    {
        max_rep = 435;
        output_file_name = "Rep2020.csv";
    };
    BaseApportionment(int max_number_of_representatives, string output_file_name)
    {
        max_rep = max_number_of_representatives;
        this->output_file_name = output_file_name;
    };
    void input()
    {
        ifstream input_file; // input file
        string ifile_name;   // input file name
        cout << "Enter the csv file name with .csv extension. " << endl;
        cin >> ifile_name;
        if (ifile_name.find(".xlsx") != string::npos) {
            XLDocument doc;

            return;
        }
        else {
            input_file.open(ifile_name);
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
                if (line1 == "" || line2 == "")
                    break;
                state_name.push_back(line1);
                pop_number.push_back(atoi(line2.c_str()));
            }
            input_file.close();
        }
        
    };
    int totalPopulation() const
    {
        int population = 0;
        int length = state_name.size();
        for (int i = 0; i < length; i++)
        {
            population += pop_number[i];
        }
        return population;
    };
    int avgRepPerPop() const
    {
        int population = totalPopulation();
        return population / max_rep;
    };
    void save()
    {
        distribute();
        for (size_t i = 0; i < state_name.size(); i++)
        {
            writeRecordToFile(i);
        }
    };
    void writeRecordToFile(int i)
    {
        ofstream file;
        file.open(output_file_name, ios_base::app);
        if (file.is_open())
        {
            if (i == 0)
            {
                file << "State,Representatives" << endl;
            }
            else
            {
                file << state_name[i] << "," << state_rep[i] << endl;
            }
        }
        file.close();
    }

protected:
    int max_rep;
    string output_file_name;
    vector<string> state_name; // name of the state
    vector<int> pop_number;    // population of the state
    vector<float> state_rep;   // number of representatives per state

    int representativeLeft()
    {
        int totalRepresentatives = 0;
        for (long unsigned int i = 0; i < state_name.size(); i++)
        {
            totalRepresentatives += state_rep[i];
        }
        int representativesLeft = max_rep - totalRepresentatives + 1;

        return representativesLeft;
    };
    virtual void distribute() = 0;
};

class HamiltonApportionment : public BaseApportionment
{
public:
    HamiltonApportionment(int max_number_of_representatives, string output_file_name) : BaseApportionment(max_number_of_representatives, output_file_name)
    {
    }

private:
    vector<int> floor_value; // floor value of the number of representatives
    vector<float> remainder; // remainder of the number of representatives
    void distribute()
    {
        int length = state_name.size();
        float *copyRemainder = new float[length];
        int average = avgRepPerPop();

        for (int i = 0; i < length; i++)
        {
            floor_value.push_back(pop_number[i] / average);
            state_rep.push_back(floor_value[i]);
            remainder.push_back(pop_number[i] % average);
        }
        int representativesLeft = representativeLeft();
        for (int i = 0; i < length; i++)
        {
            copyRemainder[i] = remainder[i];
        }
        while (representativesLeft > 0)
        {
            int max = 0;
            int index = 0;
            for (int i = 0; i < length; i++)
            {
                if (copyRemainder[i] > max)
                {
                    max = copyRemainder[i];
                    index = i;
                }
            }
            state_rep[index] += 1;
            copyRemainder[index] = 0;
            representativesLeft--;
        }
        delete[] copyRemainder;
    }
};

class HuntingtonApportionment : public BaseApportionment
{
public:
    HuntingtonApportionment(int max_number_of_representatives, string output_file_name) : BaseApportionment(max_number_of_representatives, output_file_name)
    {
    }
    float priority(int population, int state_repr)
    {
        return population / sqrt(state_repr * (state_repr + 1));
    }

private:
    void distribute()
    {
        int length = state_name.size();
        for (int i = 0; i < length; i++)
        {
            state_rep.push_back(1);
        }
        while (representativeLeft() > 0)
        {
            int max = 0;
            int index = 0;
            for (int i = 0; i < length; i++)
            {
                if (priority(pop_number[i], state_rep[i]) > max)
                {
                    max = priority(pop_number[i], state_rep[i]);
                    index = i;
                }
            }
            state_rep[index] += 1;
        }
    };
};
int main()
{
    HamiltonApportionment test(435, "hamilton.csv");
    test.input();
    
    return 0;
}