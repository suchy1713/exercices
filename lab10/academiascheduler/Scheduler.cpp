//
// Created by dolawojc on 5/17/18.
//

#include "Scheduler.h"

using namespace academia;

academia::SchedulingItem::SchedulingItem(int course, int teacher, int room, int time, int yea) {
    course_id = course;
    teacher_id = teacher;
    room_id = room;
    time_slot = time;
    year = yea;
}

int SchedulingItem::CourseId() const{
    return course_id;
}

int SchedulingItem::TeacherId() const{
    return teacher_id;
}

int SchedulingItem::RoomId() const{
    return room_id;
}

int SchedulingItem::TimeSlot() const{
    return time_slot;
}

int SchedulingItem::Year() const {
    return year;
}

void academia::Schedule::InsertScheduleItem(const academia::SchedulingItem &item) {
    items.push_back(item);
}

const academia::SchedulingItem &academia::Schedule::operator[](int i) const{
    int a = 0;
    for (const SchedulingItem &current : items) {
        if(a==i) {
            return current;
        }
        a++;
    }
}

Schedule Schedule::OfTeacher(int) const {
    return Schedule();
}

Schedule Schedule::OfRoom(int) const {
    return Schedule();
}

Schedule Schedule::OfYear(int) const {
    return Schedule();
}

std::vector<int> Schedule::AvailableTimeSlots(int n_time_slots) const {
    return std::vector<int>();
}

size_t Schedule::Size() const {
    return 0;
}
