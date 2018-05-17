//
// Created by dolawojc on 5/17/18.
//

#ifndef JIMP_EXERCISES_SCHEDULER_H
#define JIMP_EXERCISES_SCHEDULER_H


#include <utility>

namespace academia {

    class SchedulingItem {
    public:
        int course_id;
        int teacher_id;
        int room_id;
        std::pair time_slot;
        int year;
    };
}


#endif //JIMP_EXERCISES_SCHEDULER_H
