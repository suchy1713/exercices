//
// Created by dolawojc on 4/10/18.
//

#ifndef JIMP_EXERCISES_TEXTPOOL_H
#define JIMP_EXERCISES_TEXTPOOL_H

#include <stdlib.h>
#include <string>
#include <vector>
#include <experimental/string_view>
#include <set>
#include <initializer_list>

namespace pool {
    class TextPool {
        public:
            TextPool();
            TextPool(std::initializer_list<std::string> words);
            std::experimental::string_view Intern(const std::string &str);
            size_t StoredStringCount() const;
            TextPool(TextPool &&tpool);
            TextPool &operator=(TextPool &&tpool);
            ~TextPool()= default;
            void Print() const;
        private:
            std::vector<std::string > words_;

    };
}


#endif //JIMP_EXERCISES_TEXTPOOL_H
