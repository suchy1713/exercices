//
// Created by dolawojc on 4/10/18.
//

#include <iostream>
#include "TextPool.h"

using namespace pool;
using namespace std;

TextPool::TextPool() {
    vector <string> ().swap(words_);
}

TextPool::TextPool(initializer_list<string> words) {
    for (auto a : words){
        bool isit = 0;
        for (auto b : words_) {
            if (a==b) {
                isit = 1;
                break;
            }
        }
        if(!isit) {
            experimental::string_view tmp(a.c_str(), a.size());
            words_.insert(words_.end(), a);
        }
    }
}

void TextPool::Print() const {
    cout<<"wypisuje: ";
    for (auto a : words_){
        cout<<a<<endl;
    }
}

std::experimental::string_view TextPool::Intern(const std::string &str) {
    int i=0;
    for(auto a : words_){
        if(str==a){
            experimental::string_view adresik = words_[i];
            return adresik;
        }
        i++;
    }
    words_.push_back(str);
    std::experimental::string_view adres = words_.back();
    return adres;
}

size_t TextPool::StoredStringCount() const {
    return words_.size();
}

TextPool::TextPool(TextPool &&tpool) {
    for(auto a: tpool.words_) {
        words_.push_back(a);
    }
    vector <string> ().swap(tpool.words_);
}

TextPool& TextPool::operator=( TextPool &&tpool) {
    if (this == &tpool) {
        return *this;
    }
    for(auto a: tpool.words_) {
        words_.push_back(a);
    }
    vector <string> ().swap(tpool.words_);
}