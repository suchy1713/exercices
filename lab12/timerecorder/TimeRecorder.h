//
// Created by dwojt on 31.05.2018.
//

#ifndef JIMP_EXERCISES_TIMERECORDER_H
#define JIMP_EXERCISES_TIMERECORDER_H

#include <chrono>
#include <utility>


namespace profiling {
    template <class T>
    auto TimeRecorder(T obj) {
        auto start = std::chrono::system_clock::now();
        auto wynik = obj();
        auto end = std::chrono::system_clock::now();
        return std::make_pair(wynik, std::chrono::duration<double,std::milli>(end-start).count());
    }
}


#endif //JIMP_EXERCISES_TIMERECORDER_H
