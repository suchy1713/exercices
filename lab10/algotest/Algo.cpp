//
// Created by wawrpiot on 15.05.18.
//

#include <string>
#include <sstream>
#include <iomanip>
#include <map>
#include <set>
#include <algorithm>
#include <stdlib.h>
#include "Algo.h"

namespace algo{
    std::set<std::string> Keys(const std::map<std::string, int> &m){
        std::set<std::string> result;

        std::transform(m.begin(), m.end(), std::inserter(result, result.begin()), [](auto current){return current.first;});

        return result;
    }

    std::vector<int> Values(const std::map<std::string, int> &m){
        std::vector<int> result;

        std::transform(m.begin(), m.end(), std::back_inserter(result), [](auto current){return current.second;});

        return result;
    }

    bool Contains(const std::vector<int> &v, int element){
        auto result = std::find(v.begin(), v.end(), element);

        if (result != std::end(v)) {
            return true;
        }
        return false;
    }

    int Sum(const std::vector<int> &v){
        int sum = std::accumulate(v.begin(), v.end(), 0);

        return sum;
    }

    int Product(const std::vector<int> &v){
        int product = std::accumulate(v.begin(), v.end(), 1, std::multiplies<int>());

        return product;
    }

    std::vector<int> InitializedVectorOfLength(int length, int initial_value){
        std::vector<int> result(length);

        std::fill(result.begin(), result.end(), initial_value);

        return result;
    }

    void InitializeWith(int initial_value, std::vector<int> *v){
        std::fill((*v).begin(), (*v).end(), initial_value);
    }

    std::vector<std::string> MapToString(const std::vector<double> &v){
        std::vector<std::string> result;

        std::transform(v.begin(), v.end(), std::back_inserter(result), [](auto current){
            std::stringstream ss;
            ss << std::fixed << std::setprecision(6) << current;
            return ss.str();});

        return result;
    }
}