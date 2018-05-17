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

Schedule Schedule::OfTeacher(int teacher) const {
    Schedule returnable;
    for(const auto &current : items) {
        if(current.TeacherId() == teacher) {
            returnable.InsertScheduleItem(current);
        }
    }
    return returnable;
}

Schedule Schedule::OfRoom(int room) const {
    Schedule returnable;
    for(const auto &current : items) {
        if(current.RoomId() == room) {
            returnable.InsertScheduleItem(current);
        }
    }
    return returnable;
}

Schedule Schedule::OfYear(int year) const {
    Schedule returnable;
    for(const auto &current : items) {
        if(current.Year() == year) {
            returnable.InsertScheduleItem(current);
        }
    }
    return returnable;
}

std::vector<int> Schedule::AvailableTimeSlots(int n_time_slots) const {
    std::vector <int> returnable;
    int tab[n_time_slots+1];
    for (const auto &current : items) {
        tab[current.TimeSlot()]=-1;
    }
    for (int i=1; i<n_time_slots+1; i++) {
        if(tab[i]!=-1) {
            returnable.push_back(i);
        }
    }
    return returnable;
}

size_t Schedule::Size() const {
    return items.size();
}
