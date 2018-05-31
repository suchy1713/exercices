//
// Created by dwojt on 31.05.2018.
//

#ifndef JIMP_EXERCISES_SEQUENTIALGENERATOR_H
#define JIMP_EXERCISES_SEQUENTIALGENERATOR_H


template <typename T, typename L>
class SequentialIdGenerator {
    //template <typename L>
public:
    SequentialIdGenerator() {
        iterator_=0;
    }

    SequentialIdGenerator(L ite) {
        iterator_=ite;
    }
    T NextValue()
    {
        T newone(iterator_);
        iterator_ = iterator_ + 1;
        return newone;

    }

private:
    L iterator_;
};

#endif //JIMP_EXERCISES_SEQUENTIALGENERATOR_H
