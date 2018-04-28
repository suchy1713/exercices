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
        IterableIterator();//????
        IterableIterator(IterableIterator*); //???
        virtual std::pair<int, std::string> Dereference() const; // czy maja byc virtuale
        virtual IterableIterator &Next() ;
        virtual bool NotEquals(const std::unique_ptr<utility::IterableIterator> &other) const;
        ~IterableIterator() = default;
    };

    class ZipperIterator : public IterableIterator{
    public:
        ZipperIterator();
        explicit ZipperIterator(std::vector<int>::const_iterator left_begin,
                                std::vector<std::string>::const_iterator right_begin,
                                std::vector<int>::const_iterator left_end,
                                std::vector<std::string>::const_iterator right_end);
        std::pair<int, std::string> Dereference() const override ;
        IterableIterator &Next() override ;
        bool NotEquals(const std::unique_ptr<utility::IterableIterator> &other) const override ;

    private:
        std::vector<int>::const_iterator left_actual_;
        std::vector<std::string>::const_iterator right_actual_;
        std::vector<int>::const_iterator left_end_;
        std::vector<std::string>::const_iterator right_end_;
    };

    class IterableIteratorWrapper {//??????SAD?SADSA?DSA
    public:
        IterableIteratorWrapper(std::unique_ptr<IterableIterator> iterator);
        bool operator!=(const IterableIteratorWrapper &other) const;
        std::pair<int, std::string> operator*() const;
        IterableIteratorWrapper &operator++();
        IterableIterator* get() const;
    private:
        IterableIterator* self_;


    };
}

#endif //JIMP_EXERCISES_ITERABLE_H
