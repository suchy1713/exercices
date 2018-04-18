//
// Created by dolawojc on 3/11/18.
//

#include "Polybius.h"
#include <string>
#include <cstdlib>
#include <iostream>

using namespace std;



string PolybiusCrypt(string message) {
    int tab[2][26] = {{1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,4,4,4,4,4,5,5,5,5,5},{1,2,3,4,5,1,2,3,4,4,5,1,2,3,4,5,1,2,3,4,5,1,2,3,4,5}};
    string crypted = "";
    for(int i=0; i<message.size(); i++) {
        int num = int(message[i]);
        if(num >= 65 and num <= 90) {
            num += 32;
        }
        else if((num < 97 and num != 32) or num > 122) {
            return "";
        }
        if (num != 32) {
            crypted = crypted + char( tab[0][num-97]+48) + char( tab[1][num-97]+48);
        }
    }
    return crypted;
}

string PolybiusDecrypt(string crypted) {
    string tab[5] = {"abcde", "fghik", "lmnop", "qrstu", "vwxyz"};
    string message = "";
    for(int i=0; i<crypted.size(); i=i+2) {
        message = message + tab[int(crypted[i])-49][int(crypted[i+1])-49];
    }
    return message;

}