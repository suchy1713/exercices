//
// Created by dolawojc on 4/25/18.
//

#include <vector>
#include <memory>
#include "Iterable.h"

using namespace utility;
using namespace std;

std::vector<int>::const_iterator IterableIterator::getLeftIter(){
//trochę głupie rozwiązanie, ale w testach jest klasa, która dziedziczy po IterableIterator i nie zapewnia implementacji tych funkcji i wywala błąd
}
std::vector<std::string>::const_iterator IterableIterator::getRightIter(){

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

std::vector<int>::const_iterator ZipperIterator::getLeftIter()
{
    return left_actual_;
}

std::vector<std::string>::const_iterator ZipperIterator::getRightIter(){
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

EnumerateIterator::EnumerateIterator()
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

EnumerateIterator::EnumerateIterator(int index,
                  std::vector<std::string>::const_iterator right_begin,
                  std::vector<std::string>::const_iterator right_end) {
    right_actual_ = right_begin;
    right_end_ = right_end;
    index_ = index;
}

pair<int, string> EnumerateIterator::Dereference() const{
    return pair <int, string> (index_, *right_actual_);
}

IterableIterator &EnumerateIterator::Next() {
    if(right_actual_ < right_end_) {
        ++right_actual_;
    }

    index_++;

    return *this;
}

std::vector<std::string>::const_iterator EnumerateIterator::getRightIter(){
    return right_actual_;
}

std::vector<int>::const_iterator EnumerateIterator::getLeftIter(){
    std::vector<int>::const_iterator ret;
    return ret;
}

bool EnumerateIterator::NotEquals(const std::unique_ptr<IterableIterator> &other) const {
    if (right_actual_ == other.get()->getRightIter())
        return false;

    return true;
}

Enumerate::Enumerate(std::vector<std::string> x) : EnumerateIterator(1, vs_.begin(), vs_.end())
{
    vs_ = x;
}

std::unique_ptr<IterableIterator> Enumerate::ConstBegin() const
{
    return std::unique_ptr<EnumerateIterator>(new EnumerateIterator(1, vs_.begin(), vs_.end()));
}

std::unique_ptr<IterableIterator> Enumerate::ConstEnd() const
{
    return std::unique_ptr<EnumerateIterator>(new EnumerateIterator(1, vs_.end(), vs_.end()));
}

/********************************************************************************************************/

ProductIterator::ProductIterator(std::vector<int>::const_iterator left_begin,
                               std::vector<string>::const_iterator right_begin,
                                 std::vector<std::string>::const_iterator right_start,
                               std::vector<int>::const_iterator left_end,
                               std::vector<string>::const_iterator right_end) {
    left_actual_ = left_begin;
    right_actual_ = right_begin;
    left_end_ = left_end;
    right_end_ = right_end;
    right_start_ = right_start;
}

pair<int, string> ProductIterator::Dereference() const{

    if(left_actual_ == left_end_)
        return pair <int, string> (*(left_end_-1), *right_actual_);

    if(right_actual_ == right_end_)
        return pair <int, string> (*left_actual_, *(right_actual_-1));

    return pair <int, string> (*left_actual_, *right_actual_);
}

IterableIterator &ProductIterator::Next() {
    if(right_actual_ < right_end_-1) {
        ++right_actual_;
    }

    else if(right_actual_ == right_end_-1 && left_actual_ == left_end_-1){
        ++left_actual_;
        ++right_actual_;
    }

    else{
        if(left_actual_ < left_end_) {
            ++left_actual_;
            right_actual_ = right_start_;
        }
    }
    return *this;
}

std::vector<int>::const_iterator ProductIterator::getLeftIter()
{
    return left_actual_;
}

std::vector<std::string>::const_iterator ProductIterator::getRightIter(){
    return right_actual_;
}

bool ProductIterator::NotEquals(const std::unique_ptr<IterableIterator> &other) const {
    if (left_actual_ == other.get()->getLeftIter() && right_actual_ == other.get()->getRightIter())
        return false;

    return true;
}

/*********************************************************************************************************/

Product::Product(std::vector<int> x, std::vector<std::string> y) : ProductIterator(vi_.begin(), vs_.begin(), vs_.begin(), vi_.end(), vs_.end())
{
    vi_ = x;
    vs_ = y;
}

std::unique_ptr<IterableIterator> Product::ConstBegin() const
{
    return std::unique_ptr<ProductIterator>(new ProductIterator(vi_.begin(), vs_.begin(), vs_.begin(), vi_.end(), vs_.end()));
}

std::unique_ptr<IterableIterator> Product::ConstEnd() const
{
    return std::unique_ptr<ProductIterator>(new ProductIterator(vi_.end(), vs_.end(), vs_.begin(), vi_.end(), vs_.end()));
}