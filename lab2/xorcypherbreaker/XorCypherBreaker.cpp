//
// Created by suchy1713 on 15.03.18.
//

#include "XorCypherBreaker.h"
#include <string>
#include <vector>
#include <algorithm>
#include <iostream>

std::string XorCypherBreaker(const std::vector<char> &cryptogram,
                             int key_length,
                             const std::vector<std::string> &dictionary
                             )
{
    std::string crypt = "";
    std::string word = "";
    std::string ret = "";
    std::string best_ret = "";
    int maxi = 0;
    int curr = 0;

    std::cout << crypt;

    for (char i = 'a'; i <= 'z'; i++) {
        for (char j = 'a'; j <= 'z'; j++) {
            for (char k = 'a'; k <= 'z'; k++) {
                char pass[] = {i, j, k};
                ret += pass[0];
                ret += pass[1];
                ret += pass[2];

                for (int l = 0; l < cryptogram.size(); l++) {

                    crypt += char(cryptogram[l] ^ int(pass[l % 3]));

                    if(isspace(crypt[l]))
                    {
                        if (find(dictionary.begin(),dictionary.end(), word) != dictionary.end()) {
                            curr += 1;
                        }

                        word = "";
                    }

                    else
                        word += char(cryptogram[l] ^ int(pass[l % 3]));

                }

                if(curr > maxi)
                {
                    maxi = curr;
                    best_ret = ret;
                }

                ret = "";
                curr = 0;
                crypt = "";

            }
        }
    }
    return best_ret;
    }