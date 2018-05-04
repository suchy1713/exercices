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
    stringstream in {"{144}{299}{s:12}12 Font used\n{280}{350}{c:$0000FF}Hello!\n{1000}{1050}Multi|Line|Text\n"};
    stringstream out;
    subs->ShiftAllSubtitlesBy(300, 25, &in, &out);
}