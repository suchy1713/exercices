//
// Created by dolawojc on 3/18/18.
//

#include "SmartTree.h"
#include <ostream>
#include <string>
#include <memory>
#include <iostream>
#include <sstream>

using namespace ::datastructures;
int main(){
    std::cout<<"elo  "<<std::endl;
    std::stringstream ss;
    std::cout<<"elo  "<<std::endl;
    std::unique_ptr <SmartTree> new_root = RestoreTree("[99 [100 [1234 [none] [none]] [4321 [none] [none]]] [88 [897 [none] [none]] [761 [none] [none]]]]");
    PrintTreeInOrder(new_root, &ss);
    std::cout<<ss.str()<<std::endl;
    return 0;
}
