//
// Created by dolawojc on 4/25/18.
//

#include <vector>
#include <memory>
#include "Iterable.h"

using namespace utility;
using namespace std;

std::pair<int, std::string> IterableIterator::Dereference() const {
    return pair<int, string>();
}

IterableIterator &IterableIterator::Next() {
}

bool IterableIterator::NotEquals(const std::unique_ptr<IterableIterator> &other) const {
    return false;
}

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
        left_actual_++;
    }
    if(right_actual_ <= right_end_) {
        right_actual_++;
    }
    return *this;
}

bool ZipperIterator::NotEquals(const std::unique_ptr<utility::IterableIterator> &other) const {
    if( this->Dereference() != other.get()->Dereference()) {
        return true;
    }
    return false;
}


ZipperIterator::ZipperIterator() {

}


bool IterableIteratorWrapper::operator!=(const IterableIteratorWrapper &other) const {
    unique_ptr <IterableIterator> a = make_unique<IterableIterator>(other);
    return this->NotEquals(a);
}

pair<int, string> IterableIteratorWrapper::operator*() const {
    return this->Dereference();
}

IterableIteratorWrapper &IterableIteratorWrapper::operator++() {
    this->Next();
}

IterableIteratorWrapper::IterableIteratorWrapper(std::unique_ptr<IterableIterator> iterator) {//: ZipperIterator( iterator.get()->GetLeft(), iterator.get()->GetRight(), iterator.get()->GetLeftEnd(), iterator.get()->GetRightEnd()){
}
