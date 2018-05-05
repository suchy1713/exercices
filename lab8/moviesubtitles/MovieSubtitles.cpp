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

void SubRipSubtitles::ShiftAllSubtitlesBy(int offset_in_micro_seconds, int frame_per_second, std::istream *in, std::ostream *out){
    int line_no = 0;

    std::regex pattern{R"((\d{2,3}):(\d{2,3}):(\d{2,3}),(\d{2,3}) --> (\d{2,3}):(\d{2,3}):(\d{2,3}),(\d{2,3}))"};
    std::regex pattern_replace{"(\\d{2,3}):(\\d{2,3}):(\\d{2,3}),(\\d{2,3}) --> (\\d{2,3}):(\\d{2,3}):(\\d{2,3}),(\\d{2,3})"};
    std::smatch matches;

    for (std::string line; std::getline(*in, line); ) {
        if (regex_match(line, matches, pattern)) {
            stringstream tempSs;
            int temp;
            int toAdd_ms = 0;
            int toAdd_s, toAdd_m, toAdd_h;
            string replace_in, replace_out, buffer, replace;

            for(int i = 8; i >= 1; i--){
                tempSs << matches[i];
                tempSs >> temp;
                tempSs.clear();
                tempSs.str("");

                if(i%4 == 0){
                    if(temp + offset_in_micro_seconds > 999){
                        toAdd_ms = temp+offset_in_micro_seconds-1000;
                        toAdd_s = 1;
                    }

                    else{
                        toAdd_ms = temp+offset_in_micro_seconds;
                        toAdd_s = 0;
                    }
                }


                else if(i%4 == 3){
                    if(temp + toAdd_s > 59){
                        toAdd_s += temp;
                        toAdd_m = 1;
                    }

                    else{
                        toAdd_s += temp;
                        toAdd_m = 0;
                    }
                }

                else if(i%4 == 2){
                    if(temp + toAdd_m > 59){
                        toAdd_m += temp;
                        toAdd_h = 1;
                    }

                    else{
                        toAdd_m += temp;
                        toAdd_h = 0;
                    }
                }

                else if(i%4 == 1){
                    toAdd_h += temp;
                }

                if(i == 1){
                    replace_in = "";

                    if(toAdd_h < 10){
                        tempSs << 0 << toAdd_h;
                        tempSs >> buffer;
                        replace_in += buffer;
                        replace_in += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_h;
                        tempSs >> buffer;
                        replace_in += buffer;
                        replace_in += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    if(toAdd_m < 10){
                        tempSs << 0 << toAdd_m;
                        tempSs >> buffer;
                        replace_in += buffer;
                        replace_in += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_m;
                        tempSs >> buffer;
                        replace_in += buffer;
                        replace_in += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    if(toAdd_s < 10){
                        tempSs << 0 << toAdd_s;
                        tempSs >> buffer;
                        replace_in += buffer;
                        replace_in += ",";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_s;
                        tempSs >> buffer;
                        replace_in += buffer;
                        replace_in += ",";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    if(toAdd_ms < 10){
                        tempSs << 0 << 0 << toAdd_ms;
                        tempSs >> buffer;
                        replace_in += buffer;
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else if(toAdd_ms < 100){
                        tempSs << 0 << toAdd_ms;
                        tempSs >> buffer;
                        replace_in += buffer;
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_ms;
                        tempSs >> buffer;
                        replace_in += buffer;
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    toAdd_h = 0;
                    toAdd_m = 0;
                    toAdd_s = 0;
                    toAdd_ms = 0;
                }

                if(i == 5){
                    replace_out = "";

                    if(toAdd_h < 10){
                        tempSs << 0 << toAdd_h;
                        tempSs >> buffer;
                        replace_out += buffer;
                        replace_out += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_h;
                        tempSs >> buffer;
                        replace_out += buffer;
                        replace_out += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    if(toAdd_m < 10){
                        tempSs << 0 << toAdd_m;
                        tempSs >> buffer;
                        replace_out += buffer;
                        replace_out += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_m;
                        tempSs >> buffer;
                        replace_out += buffer;
                        replace_out += ":";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    if(toAdd_s < 10){
                        tempSs << 0 << toAdd_s;
                        tempSs >> buffer;
                        replace_out += buffer;
                        replace_out += ",";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_s;
                        tempSs >> buffer;
                        replace_out += buffer;
                        replace_out += ",";
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    if(toAdd_ms < 10){
                        tempSs << 0 << 0 << toAdd_ms;
                        tempSs >> buffer;
                        replace_out += buffer;
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else if(toAdd_ms < 100){
                        tempSs << 0 << toAdd_ms;
                        tempSs >> buffer;
                        replace_out += buffer;
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }

                    else{
                        tempSs << toAdd_ms;
                        tempSs >> buffer;
                        replace_out += buffer;
                        buffer = "";
                        tempSs.clear();
                        tempSs.str("");
                    }
                    toAdd_h = 0;
                    toAdd_m = 0;
                    toAdd_s = 0;
                    toAdd_ms = 0;
                }
            }

            replace = replace_in+" --> "+replace_out;

            line = regex_replace(line, pattern_replace, replace);
        }

        *out << line << '\n';
        line_no++;
    }
}


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