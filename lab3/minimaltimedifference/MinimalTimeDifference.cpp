//
// Created by dolawojc on 16.03.18.
//

#include "MinimalTimeDifference.h"
namespace minimaltimedifference {
    unsigned int ToMinutes(std::string time_HH_MM) {
        unsigned int hours = 0, minutes = 0;
        bool p = 0;
        for (int i = 0; i < time_HH_MM.size(); i++) {
            if (time_HH_MM[i] == ':') {
                p = 1;
                continue;
            }
            if (!p) {
                hours = hours * 10 + int(time_HH_MM[i]) - 48;
            } else {
                minutes = minutes * 10 + int(time_HH_MM[i]) - 48;
            }
        }
        return hours * 60 + minutes;
    }

    unsigned int MinimalTimeDifference(std::vector<std::string> times) {
        unsigned int min = 40000;
        for (int i = 0; i < times.size(); i++) {
            for (int j = 0; j < times.size(); j++) {
                if (j == i) {
                    continue;
                }
                if (abs(ToMinutes(times[i]) - ToMinutes(times[j]) < min)) {
                    min = abs(ToMinutes(times[i]) - ToMinutes(times[j]));
                }
                else if(abs(ToMinutes(times[i]) +1440 - ToMinutes(times[j])) < min ) {
                    min = abs(ToMinutes(times[i]) - ToMinutes(times[j]) +1440);
                }
            }
        }
        return min;
    }
}
