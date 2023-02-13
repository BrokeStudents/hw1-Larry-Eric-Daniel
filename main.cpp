#include <iostream>
#include <fstream>
#include <string>
#include <string>
#include <vector>
#include <algorithm>

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
    void input() {

        cout << "Enter the csv file name with .csv extension. " << endl;
        cin >> fileName;
        input_file.open(fileName);
        if (!input_file.is_open())
            cout << "Error: File Opening failed" << endl;
    void input() {

        cout << "Enter the csv file name with .csv extension. " << endl;
        cin >> fileName;
        input_file.open(fileName);
        if (!input_file.is_open())
            cout << "Error: File Open" << endl;

    };
    void output() {
        while (input_file.good()) {
            string line1;
            string line2;
            getline(input_file, line1, ',');
            getline(input_file, line2, '\n');
          
            cout << line1 << " " << line2 << endl;
            
            numbers.push_back(atoi(line2.c_str())); //Convert line2 to an integer and store them in a vector
         
        }
    void output() {
        while (input_file.good()) {

            string line1;
            string line2;
            getline(input_file, line1, ',');
            getline(input_file, line2, '\n');

            cout << line1 << " " << line2 << endl;
        }

    };
    int totalPopulation() const {

        int population = 0;

        for (auto it = numbers.begin(); it != numbers.end(); ++it) {
            population += *it; 
        }

            

        return population;
    };

    int avgRepPerPop() const {
        return 0;
    
    };

    float representatives() {
        return 0;
    float representatives() {
        return 0;
    };
    void distribute() {
    void distribute() {

    };

private:
    int max_rep;
    string fileName;
    ifstream input_file;
    ofstream output_file;
    vector <int> numbers;
    float number_of_Representatives[50];
    float remainder[50];
    int floorValue[50];

};

int main()
{
    Apportionment test1;
    test1.input();
    test1.output();

    cout << '\n' << "Total Population: " << test1.totalPopulation();

    return 0;
}