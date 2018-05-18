//
// Created by dolawojc on 5/17/18.
//

#include "Scheduler.h"
#include <iostream>

using namespace std;
using namespace academia;

vector<int> Map(const Schedule &schedule, int (*mapper)(const SchedulingItem &)) {
    std::vector<int> teachers;
    for (int i = 0; i < schedule.Size(); ++i) {
        teachers.push_back(mapper(schedule[i]));
    }
    return teachers;
}

vector<int> &Unique(vector<int> &v) {
    auto last = unique(begin(v), end(v));
    v.erase(last, end(v));
    return v;
}

vector<int> &Sorted(vector<int> &v) {
    sort(begin(v), end(v));
    return v;
}

vector<int> Teachers(const Schedule &schedule) {
    auto v = Map(schedule, [](const auto &s) { return s.TeacherId(); });
    return Unique(Sorted(v));
}

int main(){
    vector<int> rooms{1000, 2000, 3000};
    map<int, vector<int>> teachers{make_pair(100, vector<int>{10, 20}),
                                   make_pair(200, vector<int>{11, 21, 30, 40}),
                                   make_pair(300, vector<int> {32}),
                                   make_pair(400, vector<int> {42, 50, 60, 53, 54}),
                                   make_pair(500, vector<int> {77, 79, 90}),
                                   make_pair(600, vector<int> {70, 80, 91, 92, 93})};
    map<int, set<int>> years{make_pair(1, set<int>{10, 20, 11, 21}),
                             make_pair(2, set<int>{30, 40, 32, 42}),
                             make_pair(3, set<int>{50, 60, 53, 54}),
                             make_pair(4, set<int>{70, 80, 77, 79}),
                             make_pair(5, set<int>{90, 91, 92, 93})};

    Schedule schedule;
    GreedyScheduler skedz;
    schedule = skedz.PrepareNewSchedule(rooms,teachers,years,7);
    vector<int> naucz2 = Teachers(schedule);
    for(auto a:naucz2) {
        cout<<a<<endl;
    }

    return 0;
}
