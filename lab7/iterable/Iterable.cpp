//
// Created by dolawojc on 4/25/18.
//

#include <vector>
#include <memory>
#include "Iterable.h"

using namespace utility;
using namespace std;
/*
pair<int, string> IterableIterator::Dereference() const{
    return pair<int, string>();
}

IterableIterator &IterableIterator::Next() {
    //return <#initializer#>;
}

bool IterableIterator::NotEquals(const IterableIterator &other) {
    return false;
}*/

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

ZipperIterator &ZipperIterator::Next() {
    left_actual_++;
    right_actual_++;
    return *this;
}

bool ZipperIterator::NotEquals(const ZipperIterator &other) const {
    if( this->Dereference() != other.Dereference() and this->right_actual_!= other.right_actual_ and this->left_actual_ != other.left_actual_) {
        return true;
    }
    return false;
}


IterableIteratorWrapper::IterableIteratorWrapper(unique_ptr<IterableIterator> iterator) {

}

bool IterableIteratorWrapper::operator!=(const IterableIteratorWrapper &other) {
    return this->NotEquals(other);
}

std::pair<int, std::string> IterableIteratorWrapper::operator*() {
    return this->Dereference();
}

IterableIteratorWrapper &IterableIteratorWrapper::operator++() {
    return this->Next();
}

IterableIteratorWrapper Iterator::cbegin() const {
    return IterableIteratorWrapper(Iterator::ConstBegin());
}

IterableIteratorWrapper Iterator::cend() const {
    return IterableIteratorWrapper(Iterator::ConstEnd());
}

IterableIteratorWrapper Iterator::begin() const {
    return Iterator::cbegin();
}

IterableIteratorWrapper Iterator::end() const {
    return Iterator::cend();
}
