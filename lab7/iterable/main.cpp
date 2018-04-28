//
// Created by dolawojc on 4/25/18.
//

#include <iostream>
#include <vector>
#include "Iterable.h"

using namespace std;
using namespace utility;

int main() {
    const vector<int> vi {4, 77, -91, 100, 2000};
    const vector<string> vs {"4", "9991", "adfskld"};
    const vector<string> vs_expected {"4", "9991", "adfskld", "adfskld", "adfskld"};

    size_t i = 0;
    const auto zipped = Zipper(vi,vs);
    for (auto p = zipped.cbegin(); p!=zipped.cend(); ++p) {
        cout << (*p).first << endl;
        cout << (*p).second << endl;
        i++;
    }


    return 0;
}