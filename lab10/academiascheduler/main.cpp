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
    vector<int> rooms{1000};
    map<int, vector<int>> teachers{make_pair(100, vector<int>{10, 10, 10}), make_pair(200, vector<int>{10, 10})};
    map<int, set<int>> years{make_pair(1, set<int>{10})};

    Schedule schedule;
    GreedyScheduler skedz;
    schedule = skedz.PrepareNewSchedule(rooms,teachers,years,3);
    vector<int> naucz2 = Teachers(schedule);
    for(auto a:naucz2) {
        cout<<a<<endl;
    }

    return 0;
}
