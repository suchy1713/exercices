//
// Created by suchy1713 on 04.05.18.
//

#include "MovieSubtitles.h"
#include <memory>
#include <iostream>
#include <regex>


using namespace moviesubs;
using namespace std;

int main(){
    auto subs = make_unique<MicroDvdSubtitles>();
    stringstream in {"{10}{250}TEXT\n260}{220}NEWLINE\n"};
    stringstream out;
    subs->ShiftAllSubtitlesBy(300, 25, &in, &out);
}