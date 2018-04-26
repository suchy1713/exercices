//
// Created by dolawojc on 4/25/18.
//

#ifndef JIMP_EXERCISES_ITERABLE_H
#define JIMP_EXERCISES_ITERABLE_H

#include <string>
#include <iostream>
#include <memory>

namespace utility {

    class IterableIterator {
    public:
        std::pair<int, std::string> Dereference() const;
        IterableIterator &Next();
        bool NotEquals(const IterableIterator &other);
        ~IterableIterator() = default;

    };

    class IterableIteratorWrapper : public IterableIterator{
    public:
        IterableIteratorWrapper(std::unique_ptr<IterableIterator> iterator);
        bool operator!=(const IterableIteratorWrapper &other);
        std::pair<int, std::string> operator*();
        IterableIteratorWrapper &operator++();

    private:
        IterableIterator self_;

    };

    class Iterator {
    public:
        std::unique_ptr<IterableIterator> ConstBegin();
        std::unique_ptr<IterableIterator> ConstEnd();
        IterableIteratorWrapper cbegin() const;
        IterableIteratorWrapper cend() const;
        IterableIteratorWrapper begin() const;
        IterableIteratorWrapper end() const;


    };

    class ZipperIterator : public IterableIterator{
    public:
        explicit ZipperIterator(std::vector<int>::const_iterator left_begin,
                                std::vector<std::string>::const_iterator right_begin,
                                std::vector<int>::const_iterator left_end,
                                std::vector<std::string>::const_iterator right_end);
        std::pair<int, std::string> Dereference() const;
        IterableIterator &Next();
        bool NotEquals(const ZipperIterator &other) const;

    private:
        std::vector<int>::const_iterator left_actual_;
        std::vector<std::string>::const_iterator right_actual_;
        std::vector<int>::const_iterator left_end_;
        std::vector<std::string>::const_iterator right_end_;
    };

}

#endif //JIMP_EXERCISES_ITERABLE_H
