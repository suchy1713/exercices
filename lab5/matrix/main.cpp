//
// Created by suchy1713 on 10.04.18.
//

#include <Matrix.h>
#include <string>
#include <iostream>

using namespace algebra;

int main()
{
    /*std::string s1 = "[1i3 2i5 3; 3 4 5; 6 7 8]";
    std::string s2 = "[3 2 1; 5 4 3; 7 6 5]";
    Matrix x1 {s1};
    Matrix x2 {s2};
    x1.Print();
    std::cout << std::endl;
    x2.Print();
    std::cout << std::endl;
    (x1.add(x2)).Print();
    std::cout << std::endl;*/

    Matrix m1{{1.0i, 0., 0.}, {0., 1.0i, 0.}, {0., 0., 1.0i}};
    std::cout << m1.Print();

    std::complex<double> a =(5.0, 7.0);
    std::complex<double> b =(2.0, 3.0);

    return 0;
}