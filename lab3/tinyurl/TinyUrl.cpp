//
// Created by suchy1713 on 22.03.18.
//

#include "TinyUrl.h"
#include <cstdlib>
#include <string>
#include <iostream>
#include <map>
#include <utility>
#include <array>
#include <memory>

using namespace std;

string fromDecimalToOtherBase ( int base, long long int decimalNumber ) {
    string baseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    string tempVal = decimalNumber == 0 ? "0" : "";
    int mod = 0;

    while( decimalNumber != 0 ) {
        mod = decimalNumber % base;
        tempVal = baseDigits.substr( mod, 1 ) + tempVal;
        decimalNumber = decimalNumber / base;
    }

    return tempVal;
}

long int power(int num, int pow)
{
    long int ret = 1;

    for(int i = 0; i < pow; i++)
        ret *= num;

    return ret;
}

long int fromOtherBaseToDecimal( int base, string number ) {

    string baseDigits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    long int ret = 0;
    int j;

    for(int i = 0; i < number.length(); i++)
    {
        for(j = 0; j < baseDigits.length(); j++)
        {
            if(baseDigits[j] == number[i])
                break;
        }
        ret += j*power(base, number.length()-i-1);
    }

    return ret;
}

array<char, 6> StringToArray(string str) {
        array<char, 6> ret;
        int i = 0;

        for(auto &v: ret)
        {

            v = str[i];
            i++;
        }

        return ret;
    }

string ArrayToString(array<char, 6> arr) {
    string ret = "";

    for (auto v : arr) {
        ret += v;
    }

    return ret;
}

    namespace tinyurl {
        std::unique_ptr<TinyUrlCodec> Init() {
            auto codec = make_unique<TinyUrlCodec>();
            return codec;
        }

        void NextHash(std::array<char, 6> *state) {
            string prevHash;
            string nextHash;
            long long int prev;
            int i = 0;
            bool xxx = false;

            prevHash = ArrayToString(*state);

            prev = fromOtherBaseToDecimal(62, prevHash);
            prev++;
            nextHash = fromDecimalToOtherBase(62, prev);


            if(nextHash.length() < 5)
            {
                for(int k = 0; k <= 6-nextHash.length()+3; k++)
                {
                    nextHash.insert(0, "0");
                }
            }

            else if(nextHash.length() == 5)
            {
                    nextHash.insert(0, "0");
            }

            *state = StringToArray(nextHash);
        }

        string Encode(const std::string &url, std::unique_ptr<TinyUrlCodec> *codec)
        {
            if((*codec)->data.empty())
            {
                (*codec)->data.insert(pair<string, string>("000000", url));
                return "000000";
            }

            string lastHash = (*codec)->data.rbegin()->first;
            string newHash;
            array<char, 6> hashArr = StringToArray(lastHash);
            NextHash(&hashArr);
            newHash = ArrayToString(hashArr);
            (*codec)->data.insert(pair<string, string>(newHash, url));

            return newHash;
        }

        string Decode(const std::unique_ptr<TinyUrlCodec> &codec, const std::string &hash)
        {
            return codec->data.find(hash)->second;
        }
    }