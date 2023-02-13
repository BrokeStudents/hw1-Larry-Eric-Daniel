
#include <iostream>
#include <fstream>
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
            cout << "Error: File Open" << endl;

    };
    void output() {
 
        while (input_file.good()) {
            string line1;
            string line2;
            getline(input_file, line1, ',');
            getline(input_file, line2, '\n');
          
            cout << line1 << " " << line2 << endl;
            
            numbers.push_back(atoi(line2.c_str()));
         
        }

    };
    int totalPopulation() {
        int population = 0;

        for (auto it = numbers.begin(); it != numbers.end(); ++it) {
            population += *it;
        }

            

        return population;
    
    };

    int avgRepPerPop()  {
        int population = totalPopulation();

        return population / max_rep;


    };

    void representatives() {

        int average = avgRepPerPop();

        for (int i = 0; i < 50; i ++) {

            number_of_Representatives[i] =  numbers[i] / static_cast<float>(average);

            floorValue[i] = floor(number_of_Representatives[i]);

            remainder[i] = number_of_Representatives[i] - floorValue[i];

            cout << '\n' <<" Representatives: " << number_of_Representatives[i] <<" floorValue : " << floorValue[i]  <<" remainder : " << remainder[i] << '\n';

        }

    };

    int representativeLeft() {
        int totalRepresentatives = 0;
        for (int i = 0; i < 50; i++) {
            totalRepresentatives += floorValue[i];
        }
        int representativesLeft = max_rep - totalRepresentatives;

        return representativesLeft;
    };

    void distribute() {

        float copyRemainder[50];

        for (int i = 0; i < 50; i++) {
            copyRemainder[i] = remainder[i];

           }
        sort(copyRemainder, copyRemainder + 50);
       
        
        int representativesLeft = representativeLeft();
        if (representativesLeft > 0) {
      
                for (int i = 0; i < 50; i++) {
                    for (int k = 50; k > 50 - representativesLeft; k--) {
                        if (remainder[i] == copyRemainder[k]) { //Since copyRemainder is a sorted list in ascending order, find the index of the next largest remainder value and add a representative in a descending until there are no more leftover representatives.

                            floorValue[i] += 1;

                        }

                }
            }
        }
        
        for (int i = 0; i < 50; i++) {

            cout << "\n"  << " Representatives: " << number_of_Representatives[i] << " floorValue: " << floorValue[i] << " remainder: " << remainder[i] << '\n';

        }
       
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
    cout << '\n' << "Population average: " << test1.avgRepPerPop();

     test1.representatives();
     cout << '\n' << "Representatives left to distribute: " << test1.representativeLeft();
     cout << '\n' << "Number of Representatives after re-distributing: " << endl;
     test1.distribute();

    return 0;
}
