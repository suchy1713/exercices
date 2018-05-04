//
// Created by suchy1713 on 04.05.18.
//

#include "MovieSubtitles.h"

using namespace moviesubs;
using namespace std;

void MicroDvdSubtitles::ShiftAllSubtitlesBy(int offset_in_micro_seconds, int frame_per_second, std::istream *in, std::ostream *out){
    double offset_in_seconds = offset_in_micro_seconds*0.001;
    int offset_in_frames = int(offset_in_seconds*frame_per_second);
    int tmp = 0;
    std::string replace;
    std::string replace1;


    std::regex pattern{R"(\{(\d{1,10})\}\{(\d{1,10})\}.*)"};
    std::regex patternReplace{"^\\{\\d{1,10}\\}\\{(\\d{1,10})\\}"};
    std::smatch matches;

    for (std::string line; std::getline(*in, line); ) {
        if (regex_match(line, matches, pattern)) {
            //tragiczne rozwiazanie (probowalem uzyc jednego ss, ale po wyczyszczeniu *wlasnie sobie uswiadomilem, ze nikt tego nie przeczyta* nie przypisywaly sie kolejne wartosci, wiec uzylem czterech, przynajmniej dziala
            std::stringstream tempSs;
            std::stringstream tempSs2;
            std::stringstream tempSs3;
            std::stringstream tempSs4;

            tmp = 0;

            tempSs << matches[1];
            tempSs >> tmp;

            tmp += offset_in_frames;
            tempSs2 << tmp;
            replace = tempSs2.str();

            tmp = 0;

            tempSs3 << matches[2];
            tempSs3 >> tmp;

            tmp += offset_in_frames;
            tempSs4 << tmp;
            replace1 = tempSs4.str();

            line = regex_replace(line, patternReplace, '{'+replace+'}'+'{'+replace1+'}');

            *out << line << '\n';
    }
    }

    //(*out) << line;
};