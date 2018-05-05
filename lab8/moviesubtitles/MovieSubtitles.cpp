//
// Created by suchy1713 on 04.05.18.
//

#include "MovieSubtitles.h"

using namespace moviesubs;
using namespace std;

void MicroDvdSubtitles::ShiftAllSubtitlesBy(int offset_in_micro_seconds, int frame_per_second, std::istream *in, std::ostream *out){

    if(frame_per_second < 0){
        throw std::invalid_argument("frame_per_second < 0");
    }


    double offset_in_seconds = offset_in_micro_seconds*0.001;
    int offset_in_frames = int(offset_in_seconds*frame_per_second);
    int int_on = 0;
    int int_off = 0;
    int line_no = 1;
    std::string line_no_str;
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
            std::stringstream tempSs5;

            int_on = 0;

            tempSs << matches[1];
            tempSs >> int_on;

            int_on += offset_in_frames;
            tempSs2 << int_on;
            replace = tempSs2.str();

            int_off = 0;

            tempSs3 << matches[2];
            tempSs3 >> int_off;

            int_off += offset_in_frames;
            tempSs4 << int_off;
            replace1 = tempSs4.str();

            tempSs5 << line_no;
            line_no_str = tempSs5.str();

            if(int_on < 0 || int_off < 0){
                throw NegativeFrameAfterShift(line_no_str, line);
            }

            if(int_on >= int_off){
                throw SubtitleEndBeforeStart(line_no_str, line);
            }

            line = regex_replace(line, patternReplace, '{'+replace+'}'+'{'+replace1+'}');

            *out << line << '\n';

            line_no++;
    }

        else{
            throw InvalidSubtitleLineFormat(line_no_str, line);
        }
    }

    //(*out) << line;
};


SubtitlesException::SubtitlesException(const std::string &line_no, const std::string &line) : invalid_argument("At line "+ line_no + ": "+line){

}

NegativeFrameAfterShift::NegativeFrameAfterShift(const std::string &line_no, const std::string &line) : SubtitlesException(line_no, line){

}

SubtitleEndBeforeStart::SubtitleEndBeforeStart(const std::string &line_no, const std::string &line) : SubtitlesException(line_no, line){
    std::stringstream tempSs;
    tempSs << line_no;
    tempSs >> line_;
}

int SubtitleEndBeforeStart::LineAt() const{
    return line_;
}

InvalidSubtitleLineFormat::InvalidSubtitleLineFormat(const std::string &line_no, const std::string &line) : SubtitlesException(line_no, line){

}