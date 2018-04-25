//
// Created by dolawojc on 25.04.18.
//

#ifndef JIMP_EXERCISES_PESEL_H
#define JIMP_EXERCISES_PESEL_H

#include <string>
#include <stdexcept>
namespace academia {
    class AcademiaDataValidationError : public std::invalid_argument{
    public:
        AcademiaDataValidationError(const std::string &message);
    };

    class InvalidPeselChecksum : public AcademiaDataValidationError{
    public:
        InvalidPeselChecksum(const std::string &pesel, int checksum);
    };

    class InvalidPeselLength : public AcademiaDataValidationError {
    public:
        InvalidPeselLength(const std::string &pesel, size_t len);
    };

    class InvalidPeselCharacter : public std::invalid_argument{
    public:
        InvalidPeselCharacter(const std::string &pesel);
    };


    class Pesel {
    public:
        Pesel(const char *);
        void validatePESEL(const char *);

    private:
        std::string nr_;
    };
}

#endif //JIMP_EXERCISES_PESEL_H
