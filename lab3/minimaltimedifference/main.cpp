//
// Created by dolawojc on 16.03.18.
//

#include "MinimalTimeDifference.h"
#include <cstdlib>
#include <sstream>
#include <regex>
#include <cmath>
#include <vector>
#include <cstdio>
#include <iostream>

int main(){
    std::cout<< ToMinutes("12:03")<< "  "<<ToMinutes("00:12")<<std::endl;
    return 0;
}