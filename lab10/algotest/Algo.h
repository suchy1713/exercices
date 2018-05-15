//
// Created by wawrpiot on 15.05.18.
//

#ifndef JIMP_EXERCISES_ALGO_H
#define JIMP_EXERCISES_ALGO_H

#include <string>
#include <map>
#include <set>
#include <algorithm>

namespace algo{
    std::set<std::string> Keys(const std::map<std::string, int> &m);
    std::vector<int> Values(const std::map<std::string, int> &m);
    bool Contains(const std::vector<int> &v, int element);
    int Sum(const std::vector<int> &v);
    int Product(const std::vector<int> &v);
    std::vector<int> InitializedVectorOfLength(int length, int initial_value);
    void InitializeWith(int initial_value, std::vector<int> *v);
    std::vector<std::string> MapToString(const std::vector<double> &v);
}


#endif //JIMP_EXERCISES_ALGO_H
