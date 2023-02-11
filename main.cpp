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
    void input(){

    };
    void output(){

    };
    int totalPopulation() const {
        return 0;
    };
    int avgRepPerPop() const {
        return 0;
    };
    float representatives(){
        return 0;
    };
    void distribute(){

    };

private:
    int max_rep;
    ifstream input_file;
    ofstream output_file;
};

int main()
{
    string fileName;
    cout << "Enter the csv file name with .csv extension. " << endl;
    cin >> fileName;
    ifstream myFile(fileName);


    if (!myFile.is_open())
        cout << "Error: File Open" << endl;

    while (myFile.good()) {

        string line1;
        string line2;
        getline(myFile, line1, ',');
        getline(myFile, line2, '\n');

        cout << line1 << " " << line2 << endl;
    }

    myFile.close();
    return 0;
}