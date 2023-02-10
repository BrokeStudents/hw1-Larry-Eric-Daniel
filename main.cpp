#include <iostream>
#include <fstream>
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

    };
    int avgRepPerPop() const {

    };
    float representatives(){

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
    return 0;
}