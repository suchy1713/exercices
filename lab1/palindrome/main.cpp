//
// Created by dwojt on 05.03.2018.
//

#include <cstdlib>
#include <string>
#include "Palindrome.h"
#include <iostream>

using namespace std;

int main()
{
    int choice=0;
    while(choice!=1) {
        cout << "[1] Wyjscie" << endl << "[2] Sprawdz palindrom" << endl;
        cin >> choice;
        if (choice == 2) {
            string txt;
            cin.ignore();
            getline(cin,txt);
            if(is_palindrome(txt))
                cout<<"tak"<<endl;
            else
                cout<<"nie"<<endl;
        }
    }
    return 0;
}