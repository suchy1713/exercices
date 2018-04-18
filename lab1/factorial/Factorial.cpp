//
// Created by mwypych on 02.02.17.
//
#include "Factorial.h"

int factorial(int value) {
    if (value<=-13 or value>=13)
        return 0;
    else if (value == 0)
        return 1;
    else if (value>0)
        return factorial(value-1)*value;
    else
        return factorial(value+1)*value;
  return 0;
}
