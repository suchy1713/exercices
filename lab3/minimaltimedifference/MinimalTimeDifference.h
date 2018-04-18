//
// Created by dolawojc on 16.03.18.
//

#ifndef JIMP_EXERCISES_MINIMALTIMEDIFFERENCE_H
#define JIMP_EXERCISES_MINIMALTIMEDIFFERENCE_H

#include <cstdlib>
#include <sstream>
#include <regex>
#include <cmath>
#include <vector>

namespace minimaltimedifference {
    unsigned int ToMinutes(std::string time_HH_MM);

    unsigned int MinimalTimeDifference(std::vector<std::string> times);
}

#endif //JIMP_EXERCISES_MINIMALTIMEDIFFERENCE_H
