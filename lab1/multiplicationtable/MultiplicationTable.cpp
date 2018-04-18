//
// Created by Komputer on 2018-03-07.
//

#include <iostream>
#include "MultiplicationTable.h"

using namespace std;

void printTable(int tab[][10])
{
    for(int i = 0; i < 10; i++)
    {
        for(int j = 0; j < 10; j++)
            cout << tab[i][j] << " ";

        cout << endl;
    }
}

void MultiplicationTable(int tab[][10])
{
    for(int i = 0; i < 10; i++)
        for(int j = 0; j < 10; j++)
            tab[i][j] = (i+1)*(j+1);

    printTable(tab);
}
