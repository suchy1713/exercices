//
// Created by dwojt on 05.03.2018.
//

#include "Palindrome.h"
#include <string>
#include <cstdlib>

using namespace std;

bool is_palindrome(string str)
{
    int a = str.size();
    for (int i=0; i<a/2; i++)
    {
        if (str[i]!=str[a-i-1])
            return false;
    }
    return true;
}