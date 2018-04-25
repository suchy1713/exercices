//
// Created by dolawojc on 25.04.18.
//

#include <cstring>
#include <iostream>
#include "Pesel.h"
using namespace academia;

Pesel::Pesel(const char *numer) {
    validatePESEL( numer );
}

void Pesel::validatePESEL(const char * walesa) {

    if(std::strlen(walesa)!=11){
        throw InvalidPeselLength(walesa, std::strlen(walesa));
    }

    for (int i=0; i<std::strlen(walesa); i++){
        if( walesa[i]>'9' or walesa[i] <'0') {
            throw InvalidPeselCharacter(walesa);
        }
    }
    int wagi[] = {9,7,3,1,9,7,3,1,9,7};
    int sum = 0;
    for (int i=0; i<10; i++) {
        sum += wagi[i] * int(walesa[i]-'0');
    }
    sum=sum%10;
    if(sum != int(walesa[10]-'0')) {
        throw InvalidPeselChecksum(walesa, sum);
    }


    /*if((walesa[2]=='0' and walesa[3]=='0') or (walesa[4]=='0' and walesa[5]=='0')) {
        throw AcademiaDataValidationError(" ");
    }*/


}

AcademiaDataValidationError::AcademiaDataValidationError(const std::string &message) : invalid_argument(message) {

}

InvalidPeselChecksum::InvalidPeselChecksum(const std::string &pesel , int checksum) :AcademiaDataValidationError("Invalid PESEL("+pesel+") checksum: "+char(checksum+48)){

}

InvalidPeselLength::InvalidPeselLength(const std::string &pesel, size_t len) :AcademiaDataValidationError("Invalid PESEL("+pesel+") length: "){

}

InvalidPeselCharacter::InvalidPeselCharacter(const std::string &pesel) : invalid_argument("Invalid PESEL("+pesel+") character set") {

}
