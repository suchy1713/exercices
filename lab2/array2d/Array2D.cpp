//
// Created by wawrpiot on 09.03.18.
//

#include <array>
#include <iostream>
#include "Array2D.h"

using namespace std;

int **Array2D(int n_rows, int n_columns)
{
    int k = 1;

    if(n_rows < 1 || n_columns < 1)
        return nullptr;

    int **array = new int*[n_rows];

    for(int i = 0; i <= n_rows; i++){
        array[i] = new int[n_columns];
    }

    for(int i = 0; i <= n_rows; i++){
        for(int j = 0; j <= n_columns; j++)
        {
            array[i][j] = k;
            k++;
        }
    }

    for(int i = 0; i <= n_rows; i++){
        for(int j = 0; j <= n_columns; j++)
            cout << array[i][j] << " ";
        cout << endl;
    }

    return array;
}