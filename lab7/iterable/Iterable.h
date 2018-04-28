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
        virtual std::pair<int, std::string> Dereference() const = 0; // czy maja byc virtuale
        virtual IterableIterator &Next() = 0;
        virtual bool NotEquals(const std::unique_ptr<utility::IterableIterator> &other) const = 0;
        ~IterableIterator() = default;
        virtual std::vector<int>::const_iterator getLeftIter();
        virtual std::vector<std::string>::const_iterator getRightIter();

    };

    class ZipperIterator : public IterableIterator{
    public:
        explicit ZipperIterator(std::vector<int>::const_iterator left_begin,
                                std::vector<std::string>::const_iterator right_begin,
                                std::vector<int>::const_iterator left_end,
                                std::vector<std::string>::const_iterator right_end);
        ZipperIterator();
        std::pair<int, std::string> Dereference() const override ;
        IterableIterator &Next() override ;
        std::vector<int>::const_iterator getLeftIter() override;
        std::vector<std::string>::const_iterator getRightIter() override;
        bool NotEquals(const std::unique_ptr<utility::IterableIterator> &other) const override;

    protected:
        std::vector<int>::const_iterator left_actual_;
        std::vector<std::string>::const_iterator right_actual_;
        std::vector<int>::const_iterator left_end_;
        std::vector<std::string>::const_iterator right_end_;
    };


    class IterableIteratorWrapper {
    public:
        IterableIteratorWrapper(std::unique_ptr<IterableIterator> iterator);
        bool operator!=(const IterableIteratorWrapper &other) const;
        std::pair<int, std::string> operator*() const;
        IterableIteratorWrapper &operator++();
    private:
        std::unique_ptr<IterableIterator> self_;


    };

    class Iterable {
    public:
        virtual std::unique_ptr<IterableIterator> ConstBegin() const = 0;
        virtual std::unique_ptr<IterableIterator> ConstEnd() const = 0;

        IterableIteratorWrapper cbegin() const;
        IterableIteratorWrapper cend() const;
        IterableIteratorWrapper begin() const;
        IterableIteratorWrapper end() const;
    };

    class Zipper : public Iterable, public ZipperIterator{
    public:
        Zipper(std::vector<int>, std::vector<std::string>);
        std::unique_ptr<IterableIterator> ConstBegin() const override;
        std::unique_ptr<IterableIterator> ConstEnd() const override;
        ~Zipper() = default;

    private:
        std::vector<int> vi_;
        std::vector<std::string> vs_;
    };


    class EnumerateIterator : public IterableIterator{
    public:
        explicit EnumerateIterator(int index,
                                   std::vector<std::string>::const_iterator right_begin,
                                   std::vector<std::string>::const_iterator right_end);
        EnumerateIterator();
        std::pair<int, std::string> Dereference() const override ;
        IterableIterator &Next() override ;
        std::vector<int>::const_iterator getLeftIter() override;
        std::vector<std::string>::const_iterator getRightIter() override;
        bool NotEquals(const std::unique_ptr<utility::IterableIterator> &other) const override;

    protected:
        int index_;
        std::vector<std::string>::const_iterator right_actual_;
        std::vector<std::string>::const_iterator right_end_;
    };

    class Enumerate : public Iterable, public EnumerateIterator{
    public:
        Enumerate(std::vector<std::string>);
        std::unique_ptr<IterableIterator> ConstBegin() const override;
        std::unique_ptr<IterableIterator> ConstEnd() const override;
        ~Enumerate() = default;

    private:
        std::vector<std::string> vs_;
    };


    class ProductIterator : public IterableIterator{
    public:
        explicit ProductIterator(std::vector<int>::const_iterator left_begin,
                                std::vector<std::string>::const_iterator right_begin,
                                 std::vector<std::string>::const_iterator right_start,
                                std::vector<int>::const_iterator left_end,
                                std::vector<std::string>::const_iterator right_end);
        ProductIterator();
        std::pair<int, std::string> Dereference() const override ;
        IterableIterator &Next() override ;
        std::vector<int>::const_iterator getLeftIter() override;
        std::vector<std::string>::const_iterator getRightIter() override;
        bool NotEquals(const std::unique_ptr<utility::IterableIterator> &other) const override;

    protected:
        std::vector<int>::const_iterator left_actual_;
        std::vector<std::string>::const_iterator right_actual_;
        std::vector<int>::const_iterator left_end_;
        std::vector<std::string>::const_iterator right_end_;
        std::vector<std::string>::const_iterator right_start_;
    };

    class Product : public Iterable, public ProductIterator{
    public:
        Product(std::vector<int>, std::vector<std::string>);
        std::unique_ptr<IterableIterator> ConstBegin() const override;
        std::unique_ptr<IterableIterator> ConstEnd() const override;
        ~Product() = default;

    private:
        std::vector<int> vi_;
        std::vector<std::string> vs_;
    };
}

#endif //JIMP_EXERCISES_ITERABLE_H