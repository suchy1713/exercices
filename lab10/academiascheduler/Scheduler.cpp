//
// Created by dolawojc on 5/17/18.
//

#include "Scheduler.h"

using namespace academia;
using namespace std;

TimeInRoom::TimeInRoom(int rooms_no){
    for(int i = 0; i < rooms_no; i++){
        time_.emplace_back(pair<pair<int, int>, pair<int, int> >(pair<int, int>(0, 0), pair<int, int>(0, 0)));
    }
}

bool TimeInRoom::insert(std::pair<std::pair<int, int>, std::pair<int, int> > course ){
    int tmp = 0;

    if(is_full()){
        return false;
    }

    for(int i = 0; i < time_.size(); i++){
        if(time_[i].second.first == course.second.first || time_[i].second.second == course.second.second){
            return false;
        }
    }

    for(int i = 0; i < time_.size(); i++){
        if(time_[i].first.second == 0 && time_[i].second.first == 0 && time_[i].second.second == 0){
            tmp = i;
            break;
        }
    }

    time_[tmp].first.first = course.first.first;
    time_[tmp].first.second = course.first.second;
    time_[tmp].second.first = course.second.first;
    time_[tmp].second.second = course.second.second;

    return true;
}

bool TimeInRoom::check(std::pair<std::pair<int, int>, std::pair<int, int> > course){
    for(int i = 0; i < time_.size(); i++){
        if(time_[i].second.first == course.second.first || time_[i].second.second == course.second.second){
            return false;
        }
    }

    return true;
}

std::vector<int> TimeInRoom::swap(std::pair<std::pair<int, int>, std::pair<int, int> > course){
    int tmp = 0;
    std::vector<int> ret;

    for(int i = 0; i < time_.size(); i++){
        if(time_[i].first.second == 0 && time_[i].second.first == 0 && time_[i].second.second == 0){
            tmp = i;
            break;
        }
    }

    ret.emplace_back(time_[tmp].first.first);
    ret.emplace_back(time_[tmp].first.second);
    ret.emplace_back(time_[tmp].second.first);
    ret.emplace_back(time_[tmp].second.second);

    time_[tmp].first.first = course.first.first;
    time_[tmp].first.second = course.first.second;
    time_[tmp].second.first = course.second.first;
    time_[tmp].second.second = course.second.second;

    return ret;
};

bool TimeInRoom::is_full(){
    for(auto &i: time_){
        if(i.first.second == 0 && i.second.first == 0 && i.second.second == 0){
            return false;
        }
    }
    return true;
}

int TimeInRoom::get_course(int index){
    return time_[index].first.second;
}

int TimeInRoom::get_year(int index){
    return time_[index].second.first;
}

int TimeInRoom::get_teacher(int index){
    return time_[index].second.second;
}

void TimeInRoom::print(){
    for(int i = 0; i < time_.size(); i++){
        cout << get_course(i) << "/" << get_year(i) << "/" << get_teacher(i) << '\t';
    }
    cout << endl;
}

void TimeInRoom::return_it(Schedule* returnable, int time, const std::vector<int> &rooms){
    for(int i = 0; i < time_.size(); i++){
        if(time_[i].first.second == 0 && time_[i].second.first == 0 && time_[i].second.second == 0){
            return;
        }
        SchedulingItem temporary(time_[i].first.second, time_[i].second.second, rooms[i], time, time_[i].second.first);
        (*returnable).InsertScheduleItem(temporary);
    }
}

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

Schedule GreedyScheduler::PrepareNewSchedule(const std::vector<int> &rooms,
                                             const std::map<int, std::vector<int>> &teacher_courses_assignment,
                                             const std::map<int, std::set<int>> &courses_of_year, int n_time_slots) {
    Schedule returnable;

    vector<int> test_for_exception1, test_for_exception2;
    int test_for_exception3 = 0, test_for_exception4 = 0;

    map<int, int> teacher_courses_assignment_size;


    for (auto &course_pair : courses_of_year) {
        if (course_pair.second.size() > test_for_exception3) {
            test_for_exception3 = course_pair.second.size();
        }
        for (auto &a :course_pair.second) {
            test_for_exception1.push_back(a);
        }
    }

    for (auto &course_pair : teacher_courses_assignment) {
        if (course_pair.second.size() > test_for_exception4) {
            test_for_exception4 = course_pair.second.size();
            teacher_courses_assignment_size.insert(pair<int, int>(course_pair.first, course_pair.second.size()));
        }
        for (auto &a :course_pair.second) {
            test_for_exception2.push_back(a);
        }
    }

    sort(begin(test_for_exception2), end(test_for_exception2));

    if (test_for_exception3 > n_time_slots || test_for_exception4 > n_time_slots ||
        n_time_slots * rooms.size() < test_for_exception1.size()) {
        throw NoViableSolutionFound();
    }

    if (test_for_exception1 != test_for_exception2) {
        vector<int> tfe1_unique, tfe2_unique;
        tfe1_unique = test_for_exception1;
        tfe2_unique = test_for_exception2;
        tfe1_unique.erase(unique(tfe1_unique.begin(), tfe1_unique.end()), tfe1_unique.end());
        tfe2_unique.erase(unique(tfe2_unique.begin(), tfe2_unique.end()), tfe2_unique.end());

        if (tfe1_unique != tfe2_unique) {
            throw NoViableSolutionFound();
        }

        for(auto &i: test_for_exception2){
            if(std::count(begin(test_for_exception2), end(test_for_exception2), i) > n_time_slots){
                throw NoViableSolutionFound();
            }
        }
    }

    /*****************************************************************/
    map<pair<int, int>, pair<int, int> > courses;
    vector<TimeInRoom> time;

    for (int i = 0; i < n_time_slots; i++) {
        TimeInRoom x(rooms.size());
        time.emplace_back(x);
    }

    int temp_teacher;
    int index = 0;

    if (test_for_exception1.size() == test_for_exception2.size()) {
        for (auto &course: test_for_exception2) {
            for (auto &course_pair : teacher_courses_assignment) {
                for (auto &a :course_pair.second) {
                    if (a == course) {
                        temp_teacher = course_pair.first;
                        break;
                    }
                }
            }

            for (auto &course_pair : courses_of_year) {
                for (auto &a :course_pair.second) {
                    if (a == course) {
                        courses.insert(
                                pair<pair<int, int>, pair<int, int> >(pair<int, int>(index, course), pair<int, int>(course_pair.first, temp_teacher)));
                        index++;
                        break;
                    }
                }
            }
        }
    } else {
        for (auto &course_pair : teacher_courses_assignment) {
            for (auto &a :course_pair.second) {
                for (auto &course_pair2 : courses_of_year) {
                    for (auto &b :course_pair2.second) {
                        if (a == b) {
                            courses.insert(pair<pair<int, int>, pair<int, int> >(pair<int, int>(index, a),
                                                                                 pair<int, int>(course_pair2.first,
                                                                                                course_pair.first)));
                            index++;
                        }
                    }
                }
            }
        }
    }

    bool flag = true;
    vector<int> to_swap;
    pair<pair<int, int>, pair<int, int> > to_swap2;

    for (auto &c: courses) {
        flag = true;
        for (auto &i: time) {
            if (i.insert(c)) {
                flag = false;
                break;
            }
        }

        if (flag) {
            for (auto &i: time) {
                if (i.check(c)) {
                    to_swap = i.swap(c);
                    to_swap2.first.first = to_swap[0];
                    to_swap2.first.second = to_swap[1];
                    to_swap2.second.first = to_swap[2];
                    to_swap2.second.second = to_swap[3];
                    break;
                }
            }

            for (auto &i: time) {
                if (i.insert(to_swap2)) {
                    break;
                }
            }
        }
    }

    for (int i = 0; i < time.size(); i++) {
        time[i].print();
        time[i].return_it(&returnable, i+1, rooms);
    }

    cout << endl << endl;
    return returnable;
}


NoViableSolutionFound::NoViableSolutionFound() : invalid_argument("NoViableSolutionFound") {

}