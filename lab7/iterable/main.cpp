//
// Created by dolawojc on 4/25/18.
//

#include <iostream>
#include <vector>
#include "Iterable.h"

using namespace std;
using namespace utility;

int main() {
    vector <int> tab = {1,4,5};
    vector <string> tab2= {"sam", "ochod", "szybciutki"};
    ZipperIterator cipper(tab.begin(), tab2.begin(), tab.end(), tab2.end());
    std::unique_ptr<IterableIterator> test_it = std::make_unique<ZipperIterator>(cipper);


    return 0;
}