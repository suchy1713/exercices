//
// Created by dolawojc on 4/25/18.
//

#include <iostream>
#include <vector>
#include "Iterable.h"

using namespace std;
using namespace utility;

int main() {

    const vector<int> vi {7, -3};
    const vector<string> vs {"4", "9991", "adfskld"};
    vector<pair<int,string>> expected {{7, "4"}, {7, "9991"}, {7, "adfskld"},{-3, "4"}, {-3, "9991"}, {-3, "adfskld"}};

    size_t i = 0;
    for (const auto &p : Product(vi, vs)) {
        cout << expected[i].first << " " << expected[i].second << endl;
        cout << p.first << " " << p.second << endl;
        i++;
    }


    return 0;
}