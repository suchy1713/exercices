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
    SchedulingItem przedmiocik{1,2,3,4,5};
    Schedule rozpiska;
    rozpiska.InsertScheduleItem(przedmiocik);
    //cout<<rozpiska[0].TeacherId();
    vector<int> naucz = Teachers(rozpiska);
    for(auto a:naucz) {
        cout<<a<<endl;
    }
    GreedyScheduler skedz;
    vector<int> rr{1,2};
    std::map <int, vector<int >> nn {make_pair(100,vector<int>{10,20})};
    std::map <int, set<int >> pp {make_pair(1,set<int>{10,20})};
    skedz.PrepareNewSchedule(rr,nn,pp,30);

    return 0;
}
