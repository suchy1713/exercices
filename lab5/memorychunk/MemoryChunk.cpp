//
// Created by wawrpiot on 06.04.18.
//

#include "MemoryChunk.h"
using namespace memorychunk;

MemoryChunk::MemoryChunk(size_t sz)
{
    poin_ = new int8_t[sz];
    size_ = sz;
}

MemoryChunk::MemoryChunk(const MemoryChunk& x, size_t sz)
{
    poin_ = new int8_t[sz];
    std::copy(poin_, poin_ + sz, x.poin_);
}

MemoryChunk & MemoryChunk::operator=(const MemoryChunk& x) {
    if (this == &x) {
        return *this;
    }

    delete[] poin_;
    poin_ = new int8_t[ChunkSize()];
    std::copy(poin_, poin_ + ChunkSize(), x.poin_);
}

MemoryChunk::MemoryChunk(MemoryChunk &&x, size_t sz) : poin_{nullptr} {
    std::swap(poin_,x.poin_);
}

MemoryChunk & MemoryChunk::operator=(MemoryChunk &&x) {
    if (this == &x) {
        return x;
    }

    delete[] poin_;
    poin_ = nullptr;
    std::swap(poin_,x.poin_);
}

MemoryChunk::~MemoryChunk() {
    delete [] poin_;
}

int8_t *MemoryChunk::MemoryAt(size_t offset) const
{
    return poin_;
}

size_t MemoryChunk::ChunkSize() const
{
    return size_;
}