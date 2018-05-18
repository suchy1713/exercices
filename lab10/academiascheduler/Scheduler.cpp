//
// Created by dolawojc on 5/17/18.
//

#include "Scheduler.h"

using namespace academia;
using namespace std;

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
    map<int, vector<bool>> is_teacher_avilable;
    map<int, vector<bool>> is_room_avilable;
    map<int, vector<bool>> is_course_avilable;
    for (auto &teacher : teacher_courses_assignment) {
        vector<bool> tmp;
        for(int i=0; i<=n_time_slots; i++) {
            tmp.push_back(true);
        }
        is_teacher_avilable.insert(pair<int, vector<bool>> (teacher.first,tmp));
    }
    for (auto &room : rooms) {
        vector<bool> tmp;
        for(int i=0; i<=n_time_slots; i++) {
            tmp.push_back(true);
        }
        is_room_avilable.insert(pair<int, vector<bool>> (room,tmp));
    }
    for (auto &course_pair : courses_of_year) {
        for(auto &a :course_pair.second) {
            vector<bool> tmp;
            for (int i = 0; i <= n_time_slots; i++) {
                tmp.push_back(true);
            }
            is_course_avilable.insert(pair<int, vector<bool>>(a, tmp));
        }
    }
    Schedule returnable;
    //cout<<"zaczynam petle"<<endl;
    for( const auto &pair : teacher_courses_assignment) {
        cout<< pair.first <<" ten nauczyciel"<<endl;
        for (auto current_course : pair.second) {
            cout<<current_course<< " ten kurs robie"<<endl;
            int temp_time, teacher=pair.first, room=-1, year = -1, course = current_course;
            for (const auto &pair_year : courses_of_year) {
                for (auto year_course : pair_year.second){
                    cout<<year_course<<" <- roku kurs, potrzebny kurs ->"<<current_course<<endl;
                    if(year_course == current_course) {
                        year = pair_year.first;
                        for(int current_time_period = 1; current_time_period <= n_time_slots; current_time_period++) {
                            cout<<"ten rok: "<<pair_year.first<<" w "<<current_time_period<<" czasie ma: "<<is_teacher_avilable[pair.first][current_time_period]<<endl;
                            if(is_course_avilable[current_course][current_time_period]) {
                                if (is_teacher_avilable[pair.first][current_time_period]) {
                                    for (auto &current_room : rooms) {
                                        cout << current_room << "<- pokoj " << current_time_period
                                             << "<- czas, dostepnosc: "
                                             << is_room_avilable[current_room][current_time_period] << endl;
                                        if (is_room_avilable[current_room][current_time_period]) {
                                            room = current_room;
                                            teacher = pair.first;
                                            temp_time = current_time_period;
                                            is_course_avilable[current_course][current_time_period] = false;
                                            is_room_avilable[current_room][current_time_period] = false;
                                            is_teacher_avilable[pair.first][current_time_period] = false;
                                            //cout<<"zmieniam: "<<pair_teacher.first<<" nauczyciela w "<<current_time_period<<" czasie na false"<<is_teacher_avilable[pair_teacher.first][current_time_period]<<endl;
                                            goto endloop;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if(year==-1 or room==-1) {
                throw NoViableSolutionFound();
            }

            endloop:
                cout<<course<<"ten kurs skonczylem obrabiac"<<endl;
                SchedulingItem temporary(course, teacher, room, temp_time, year);
                returnable.InsertScheduleItem(temporary);
        }

    }
    is_teacher_avilable.clear();
    is_room_avilable.clear();
    is_course_avilable.clear();
    return returnable;
}


NoViableSolutionFound::NoViableSolutionFound() : invalid_argument("NoViableSolutionFound") {

}
