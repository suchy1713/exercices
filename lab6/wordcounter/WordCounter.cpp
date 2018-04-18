//
// Created by suchy1713 on 16.04.18.
//

#include "WordCounter.h"

using namespace datastructures;

Word::Word(std::string word){
    word_ = word;
}

std::string Word::Get() const{
    return word_;
}

bool Word::operator<(const Word& a) const{
    if(a.Get() > this->Get())
        return false;

    return true;
}

bool Word::operator==(const Word& xxx) const{
    if(this->Get() == xxx.Get()){
        return true;
    }

    return false;
}

Counts::Counts(){
    count_ = 1;
}

Counts::Counts(int x){
    count_ = x;
}

int Counts::Get() const{
    return count_;
}

Counts &Counts::operator++(){
    count_++;
    return *this;
}

bool Counts::operator==(const Counts& xxx) const{
    if(this->Get() == xxx.Get()){
        return true;
    }

    return false;
}

bool Counts::operator==(const int& xxx) const{
    if(this->Get() == xxx){
        return true;
    }

    return false;
}

WordCounter::WordCounter() {

}

WordCounter::WordCounter(std::initializer_list<Word> wordList) {

    bool flag = false;

    for (auto i = wordList.begin(); i != wordList.end(); i++) {
        for(auto j = data_.begin(); j != data_.end(); j++){
            if(j->first == *i){
                ++(j->second);
                flag = true;
            }
        }

        if(!flag){
            data_.insert(std::pair<Word, Counts>(*i, Counts()));
        }
        flag = false;
    }
}

int WordCounter::TotalWords() {

    int ret = 0;

    for (auto i = data_.begin(); i != data_.end(); i++) {
        ret += (i->second).Get();
    }

    return ret;
}

int WordCounter::DistinctWords(){
    return int(data_.size());
}

int WordCounter::operator[](std::string word){

    for (auto j = data_.begin(); j != data_.end(); j++) {
        if(word == j->first.Get()){
            return j->second.Get();
        }
    }

    return 0;
}

std::set<Word> WordCounter::Words(){
    std::set<Word> ret;

    for (auto j = data_.begin(); j != data_.end(); j++) {
        ret.emplace(j->first);
    }

    return ret;
}