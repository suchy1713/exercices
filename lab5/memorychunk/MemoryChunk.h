//
// Created by wawrpiot on 06.04.18.
//

#ifndef JIMP_EXERCISES_MEMORYCHUNK_H
#define JIMP_EXERCISES_MEMORYCHUNK_H

#include <cstdint>
#include <algorithm>
namespace memorychunk
{
    class MemoryChunk {
    public:
        MemoryChunk(size_t sz);
        MemoryChunk(const MemoryChunk& x, size_t sz);
        MemoryChunk & operator=(const MemoryChunk& x);
        MemoryChunk(MemoryChunk &&x, size_t sz);
        MemoryChunk & operator=(MemoryChunk &&x);
        ~MemoryChunk();
        int8_t *MemoryAt(size_t offset) const;
        size_t ChunkSize() const;

    private:
        int8_t *poin_;
        size_t size_;
    };
}



#endif //JIMP_EXERCISES_MEMORYCHUNK_H
