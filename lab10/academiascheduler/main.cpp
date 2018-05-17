//
// Created by dolawojc on 5/17/18.
//

#include "Scheduler.h"
#include <iostream>

using namespace std;
using namespace academia;

int main(){
    SchedulingItem przedmiocik{1,2,3,4,5};
    Schedule rozpiska;
    rozpiska.InsertScheduleItem(przedmiocik);
    cout<<rozpiska[0].TeacherId();

    return 0;
}
