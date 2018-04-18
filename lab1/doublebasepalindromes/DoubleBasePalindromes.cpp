//
// Created by dwojt on 05.03.2018.
//

#include "DoubleBasePalindromes.h"

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

uint64_t DoubleBasePalindromes(int max_vaule_exculsive)
{
    uint64_t sum = 0;
    char decimal[11];
    char binary[32];

    for(int i = 1; i <= max_vaule_exculsive; i++)
    {
        itoa(i, decimal, 10);
        itoa(i, binary, 2);

        if(is_palindrome(string(decimal)) && is_palindrome(string(binary)))
            sum += i;
    }
    return sum;
}
