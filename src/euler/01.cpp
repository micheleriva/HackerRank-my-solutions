#include <iostream>

using namespace std;

int main(){

    int input;
    cin >> input;

    for(int i = 0; i < input; i++){

        int n;
        cin >> n;
        
        long a = 0, b = 0, d = 0;

        a = (n - 1) / 3;
        b = (n - 1) / 5;
        d = (n - 1) / 15;

        long c = 3 * a * (a + 1)/2 + 5 * b * (b + 1)/2 - 15 * d * (d + 1)/2;

        cout << c << endl;

    }

    return 0;
}