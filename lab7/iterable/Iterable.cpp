//
// Created by dolawojc on 4/25/18.
//

#include <vector>
#include <memory>
#include "Iterable.h"

using namespace utility;
using namespace std;

ZipperIterator::ZipperIterator(std::vector<int>::const_iterator left_begin,
                               std::vector<string>::const_iterator right_begin,
                               std::vector<int>::const_iterator left_end,
                               std::vector<string>::const_iterator right_end) {
    left_actual_ = left_begin;
    right_actual_ = right_begin;
    left_end_ = left_end;
    right_end_ = right_end;
}

pair<int, string> ZipperIterator::Dereference() const{
    if(left_actual_ == left_end_)
        return pair <int, string> (*(left_end_-1), *right_actual_);

    if(right_actual_ == right_end_)
        return pair <int, string> (*left_actual_, *(right_actual_-1));

    return pair <int, string> (*left_actual_, *right_actual_);
}

IterableIterator &ZipperIterator::Next() {
    if(left_actual_ < left_end_) {
        ++left_actual_;
    }
    if(right_actual_ < right_end_) {
        ++right_actual_;
    }
    return *this;
}

std::vector<int>::const_iterator ZipperIterator::getLeftIter() const
{
    return left_actual_;
}

std::vector<std::string>::const_iterator ZipperIterator::getRightIter() const{
    return right_actual_;
}

bool ZipperIterator::NotEquals(const std::unique_ptr<IterableIterator> &other) const {
    if (left_actual_ == other.get()->getLeftIter() && right_actual_ == other.get()->getRightIter())
        return false;

    return true;
}
ZipperIterator::ZipperIterator()
{

}

bool IterableIteratorWrapper::operator!=(const IterableIteratorWrapper &other) const {
    return self_->NotEquals(other.self_);
}

pair<int, string> IterableIteratorWrapper::operator*() const {
    return self_->Dereference();
}

IterableIteratorWrapper &IterableIteratorWrapper::operator++() {
    self_->Next();
}

IterableIteratorWrapper::IterableIteratorWrapper(unique_ptr<IterableIterator> iterator) {
    swap(self_, iterator);
}

IterableIteratorWrapper Iterable::cbegin() const {

    return IterableIteratorWrapper(ConstBegin());
}

IterableIteratorWrapper Iterable::cend() const {
    return IterableIteratorWrapper(ConstEnd());
}

IterableIteratorWrapper Iterable::begin() const {
    return cbegin();
}

IterableIteratorWrapper Iterable::end() const {
    return cend();
}

Zipper::Zipper(std::vector<int> x, std::vector<std::string> y) : ZipperIterator(vi_.begin(), vs_.begin(), vi_.end(), vs_.end())
{
    vi_ = x;
    vs_ = y;
}

std::unique_ptr<IterableIterator> Zipper::ConstBegin() const
{
    return std::unique_ptr<ZipperIterator>(new ZipperIterator(vi_.begin(), vs_.begin(), vi_.end(), vs_.end()));
}

std::unique_ptr<IterableIterator> Zipper::ConstEnd() const
{
    return std::unique_ptr<ZipperIterator>(new ZipperIterator(vi_.end(), vs_.end(), vi_.end(), vs_.end()));
}