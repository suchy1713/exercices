//
// Created by suchy1713 on 04.05.18.
//

#ifndef JIMP_EXERCISES_MOVIESUBTITLES_H
#define JIMP_EXERCISES_MOVIESUBTITLES_H

#include <iostream>
#include <string>
#include <regex>
#include <iterator>
#include <stdexcept>

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

    class SubtitlesException : public std::invalid_argument{
    public:
        SubtitlesException(const std::string &line_no, const std::string &line);
    };

    class NegativeFrameAfterShift : public SubtitlesException{
    public:
        NegativeFrameAfterShift(const std::string &line_no, const std::string &line);
    };

    class SubtitleEndBeforeStart : public SubtitlesException{
    public:
        SubtitleEndBeforeStart(const std::string &line_no, const std::string &line);
        int LineAt() const;

    private:
        int line_;
    };

    class InvalidSubtitleLineFormat : public SubtitlesException{
    public:
        InvalidSubtitleLineFormat(const std::string &line_no, const std::string &line);
    };
}


#endif //JIMP_EXERCISES_MOVIESUBTITLES_H
