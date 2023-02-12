#include <iostream>
#include <fstream>
#include <string>
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
            cout << "Error: File Open" << endl;

    };
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
        return 0;
    };
    int avgRepPerPop() const {
        return 0;
    };
    float representatives() {
        return 0;
    };
    void distribute() {

    };

private:
    int max_rep;
    string fileName;
    ifstream input_file;
    ofstream output_file;
};

int main()
{
    Apportionment test1;
    test1.input();
    test1.output();
    return 0;
}