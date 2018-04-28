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
    return pair <int, string> (*left_actual_, *right_actual_);
}

IterableIterator &ZipperIterator::Next() {
    if(left_actual_ <= left_end_) {
        ++left_actual_;
    }
    if(right_actual_ <= right_end_) {
        ++right_actual_;
    }
    return *this;
}

bool ZipperIterator::NotEquals(const std::unique_ptr<IterableIterator> &other) const {
    if( this->Dereference() != other.get()->Dereference()) {
        return true;
    }
    return false;
}

std::vector<int>::const_iterator ZipperIterator::Getleft() {
    return left_actual_;
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

    //return IterableIteratorWrapper(ConstBegin());
}

IterableIteratorWrapper Iterable::cend() const {
    //return IterableIteratorWrapper(ConstEnd());
}

IterableIteratorWrapper Iterable::begin() const {
    return cbegin();
}

IterableIteratorWrapper Iterable::end() const {
    return cend();
}

Zipper::Zipper(std::vector<int> a, std::vector<std::string> b) :ZipperIterator(a.begin(), b.begin(), a.end(), b.end()){
    //tu też w sumie nie
}


unique_ptr<IterableIterator> Zipper::ConstBegin()  {
    //tu nie wiem co
}

unique_ptr<IterableIterator> Zipper::ConstEnd()  {
    //return make_unique<ZipperIterator>(end_);
}


