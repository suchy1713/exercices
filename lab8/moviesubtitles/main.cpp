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
    unique_ptr<SubRipSubtitles> subs = make_unique<SubRipSubtitles>();
    stringstream out;
    stringstream in {"1\n00:00:10,345 --> 00:00:12,678\nTEXT\n\n4\n00:19:14,141 --> 00:21:20,100\nTT\n"};
    subs->ShiftAllSubtitlesBy(-10000, 25, &in, &out);
}