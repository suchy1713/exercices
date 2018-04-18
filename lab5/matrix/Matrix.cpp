//
// Created by suchy1713 on 10.04.18.
//

#include "Matrix.h"
#include <iostream>

using namespace algebra;

Matrix::Matrix()
{
    columns_ = 0;
    rows_ = 0;
}

Matrix::Matrix(int columns, int rows)
{
    columns_ = columns;
    rows_ = rows;
}

Matrix::Matrix(std::initializer_list<std::vector<std::complex<double>>> matrix) {
    int rows = 0;
    int columns = 0;

    for (auto i = matrix.begin(); i != matrix.end(); i++) {
        rows++;
        for (auto j = (*i).begin(); j != (*i).end(); j++)
        {
            data_.emplace_back(std::real(*j), std::imag(*j));

            if(rows == 1){
                columns++;
            }
        }

    }

    rows_ = rows;
    columns_ = columns;
}

Matrix::Matrix(const std::string matlab)
{
    std::string liczba = "";
    bool is_complex = false;
    int rows = 0;
    int columns = 1;

    for(int i = 1; i < matlab.length(); i++)
    {

        if(rows == 0)
            rows++;


        if(matlab[i] != ' ' && matlab[i] != ';' && matlab[i] != ']')
        {
            liczba += matlab[i];

            if(matlab[i] == 'i')
                is_complex = true;
        }


        else if(matlab[i] == ' ' || matlab[i] == ']')
        {
            if(rows == 1)
            {
                columns++;
            }

            double re, im;

            if(!is_complex){
                im = double(0);
                re = double(atoi(liczba.c_str()));
                data_.emplace_back(re, im);
            }

            else{
                std::string s_re = "";
                std::string s_im = "";
                bool x = false;

                for(int j = 0; j < liczba.length(); j++)
                {
                    if(liczba[j] != 'i' && !x)
                    {
                        s_re += liczba[j];
                    }

                    else if(liczba[j] != 'i' && x)
                    {
                        s_im += liczba[j];
                    }

                    else if(liczba[j] == 'i')
                    {
                        x = true;
                    }

                }
                re = double(atoi(s_re.c_str()));
                im = double(atoi(s_im.c_str()));
                data_.emplace_back(re, im);
            }


            liczba = "";
            is_complex = false;
        }
        else if(matlab[i] == ';')
        {
            rows++;
        }
    }

    rows_ = rows;
    columns_ = columns;

    std::cout << rows << " " << columns << std::endl;
}

/*Matrix::Matrix(const Matrix &matrix);
Matrix::Matrix(Matrix &&matrix);
Matrix::Matrix &operator=(const Matrix &matrix);
Matrix::Matrix &operator=(Matrix &&matrix);
Matrix::~Matrix();*/

std::pair<size_t, size_t> Matrix::Size()
{
    std::pair<size_t, size_t> ret = {rows_, columns_};
    return ret;
}

std::string Matrix::Print() const
{
    int i = 1;
    std::stringstream temp;
    std::string ret = "";
    ret += "[";

    for(auto x : data_)
    {
        temp << std::real(x);
        ret += temp.str();
        ret += "i";
        temp.str(std::string());
        temp << std::imag(x);
        ret += temp.str();
        temp.str(std::string());


        if(!(i % columns_) && i != rows_*columns_)
        {
            if(columns_ > 3)
                ret += "; ";

            else
                ret += "; ";
        }

        else if(i % columns_)
        {
            ret +=", ";
        }

        i++;
    }

    ret += "]";

    return ret;

}

Matrix Matrix::Add(const Matrix &matrix) const
{
    Matrix ret {columns_, rows_};
    int i = 0;

    if(columns_ != matrix.columns_ || rows_ != matrix.rows_)
        return ret;

    for(auto x : data_)
    {
        ret.data_.emplace_back(std::real(x)+std::real(matrix.data_[i]), std::imag(x)+std::imag(matrix.data_[i]));

        i++;
    }

    return ret;
}

Matrix Matrix::Sub(const Matrix &matrix) const
{
    Matrix ret {columns_, rows_};
    int i = 0;

    if(columns_ != matrix.columns_ || rows_ != matrix.rows_)
        return ret;

    for(auto x : data_)
    {
        ret.data_.emplace_back(std::real(x)-std::real(matrix.data_[i]), std::imag(x)-std::imag(matrix.data_[i]));

        i++;
    }

    return ret;
}

Matrix Matrix::Mul(const Matrix &matrix) const
{
    if(columns_ != matrix.rows_)
    {
        Matrix ret {0, 0};
        return ret;
    }

    Matrix ret {matrix.columns_, rows_};
    std::complex<double> temp = (0.0, 0.0);

    for(int i = 0; i < rows_; ++i)
        for(int j = 0; j < matrix.columns_; ++j)
        {
            temp = (0.0, 0.0);
            for(int k = 0; k < columns_; ++k)
                temp += data_[i*columns_+k] * matrix.data_[k*matrix.columns_+j];
            ret.data_.emplace_back(temp);
        }

    return ret;
}

Matrix Matrix::Pow(int power) const
{
    if(columns_ != rows_)
    {
        Matrix ret {0, 0};
        return ret;
    }

    if(power == 0)
    {
        Matrix ret {columns_, rows_};

        for(int i = 0; i < rows_; i++)
        {
            for(int j = 0; j < columns_; j++)
            {
                if(i == j)
                    ret.data_.emplace_back(1, 0);

                else
                    ret.data_.emplace_back(0, 0);
            }
        }

        return ret;
    }

    Matrix ret = *this;

    for(int i = 1; i < power; i++)
    {
        ret = ret.Mul(*this);
    }

    return ret;
}