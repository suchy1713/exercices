//
// Created by suchy1713 on 16.04.18.
//

#ifndef JIMP_EXERCISES_WORDCOUNTER_H
#define JIMP_EXERCISES_WORDCOUNTER_H

#include <string>
#include <map>
#include <set>
#include <utility>
#include <iostream>

namespace datastructures{
    class Word {
    public:
        Word(std::string);
        std::string Get() const;
        bool operator<(const Word&) const;
        bool operator==(const Word&) const;

    private:
        std::string word_;
    };

    class Counts {
    public:
        Counts();
        Counts(int);
        int Get() const;
        Counts &operator++();
        bool operator==(const Counts&) const;
        bool operator==(const int&) const;

    private:
        int count_;
    };

    class WordCounter {
    public:
        WordCounter();
        WordCounter(std::initializer_list<Word>);
        int DistinctWords();
        int TotalWords();
        std::set<Word> Words();
        int operator[](std::string);

    private:
        std::map<Word, Counts> data_;
    };
}

#endif //JIMP_EXERCISES_WORDCOUNTER_H
