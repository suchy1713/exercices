//
// Created by suchy1713 on 10.04.18.
//

#ifndef JIMP_EXERCISES_MATRIX_H
#define JIMP_EXERCISES_MATRIX_H

#include <string>
#include <complex>
#include <vector>
#include <utility>

namespace algebra
{
    class Matrix {
    public:
        Matrix();
        Matrix(int columns, int rows);
        Matrix(const std::string matlab);
        Matrix(std::initializer_list<std::vector<std::complex<double>>> matrix);


        /*Matrix(const Matrix &matrix);
        Matrix(Matrix &&matrix);
        Matrix &operator=(const Matrix &matrix);
        Matrix &operator=(Matrix &&matrix);
        ~Matrix();*/

        std::pair<size_t, size_t> Size();
        std::string Print() const;
        Matrix Add(const Matrix &matrix) const;
        Matrix Sub(const Matrix &matrix) const;
        Matrix Mul(const Matrix &matrix) const;
        Matrix Pow(int power) const;

    private:
        std::vector<std::complex<double>> data_;
        int rows_;
        int columns_;
    };
}



#endif //JIMP_EXERCISES_MATRIX_H
