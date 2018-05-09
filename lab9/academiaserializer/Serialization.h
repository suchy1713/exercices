//
// Created by dolawojc on 09.05.18.
//

#ifndef JIMP_EXERCISES_SERIALIZATION_H
#define JIMP_EXERCISES_SERIALIZATION_H

#include <string>
#include <vector>

namespace academia {
    class Serializable;

    class Serializer {
    public:
        Serializer(std::ostream*&);
        virtual void IntegerField(const std::string &field_name, int value) = 0;
        virtual void DoubleField(const std::string &field_name, double value) = 0;
        virtual void StringField(const std::string &field_name, const std::string &value) = 0;
        virtual void BooleanField(const std::string &field_name, bool value) = 0;
        virtual void SerializableField(const std::string &field_name, const academia::Serializable &value) = 0;
        virtual void ArrayField(const std::string &field_name,
                        const std::vector<std::reference_wrapper<const academia::Serializable>> &value) = 0;
        virtual void Header(const std::string &object_name) = 0;
        virtual void Footer(const std::string &object_name) = 0;



    };


    class Serializable {
    public:
        virtual void Serialize(Serializer *) = 0;
    };

    class Room {
    public:
        enum class Type{
            COMPUTER_LAB
        };

        Room(int, std::string, Type);
        void Serialize(Serializer*) const;

    private:
        int id_;
        std::string no_;
        Type type_;
    };
}

#endif //JIMP_EXERCISES_SERIALIZATION_H
