//
// Created by dolawojc on 25.04.18.
//

#include <cstring>
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
    if((walesa[3]!='0' and walesa[4]=='0') or (walesa[5]!='0' and walesa[6]=='0')) {
        throw AcademiaDataValidationError();
    }

    int sum = int(walesa[0]-'0')*9 + int(walesa[1]-'0')*7 + int(walesa[2]-'0')*3 + int(walesa[3]-'0')*1 + int(walesa[4]-'0')*9 + int(walesa[5]-'0')*7 + int(walesa[6]-'0')*3 + int(walesa[7]-'0') + int(walesa[8]-'0')*9 + int(walesa[9]-'0')*7;
    sum = sum % 10;
    if (sum != int(walesa[10]-'0')) {
        throw InvalidPeselChecksum(walesa, sum);
    }


}

AcademiaDataValidationError::AcademiaDataValidationError(const std::string &message) : invalid_argument(message) {

}

InvalidPeselChecksum::InvalidPeselChecksum(const std::string &pesel , int checksum) :AcademiaDataValidationError("Invalid PESEL("+pesel+") checksum: "+char(checksum+48)){

}

InvalidPeselLength::InvalidPeselLength(const std::string &pesel, size_t len) :AcademiaDataValidationError("Invalid PESEL("+pesel+") length: "){

}

InvalidPeselCharacter::InvalidPeselCharacter(const std::string &pesel) : invalid_argument("Invalid PESEL("+pesel+") character set") {

}
