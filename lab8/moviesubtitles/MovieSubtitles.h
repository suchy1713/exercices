//
// Created by suchy1713 on 04.05.18.
//

#ifndef JIMP_EXERCISES_MOVIESUBTITLES_H
#define JIMP_EXERCISES_MOVIESUBTITLES_H

#include <iostream>
#include <string>
#include <regex>
#include <iterator>

namespace moviesubs{
    class MovieSubtitles {
    public:
        virtual void ShiftAllSubtitlesBy(int offset_in_micro_seconds, int frame_per_second, std::istream *in, std::ostream *out) = 0;
        ~MovieSubtitles() = default;
    };

    class MicroDvdSubtitles : public MovieSubtitles {
    public:
        void ShiftAllSubtitlesBy(int offset_in_micro_seconds, int frame_per_second, std::istream *in, std::ostream *out) override;
    };
}


#endif //JIMP_EXERCISES_MOVIESUBTITLES_H
