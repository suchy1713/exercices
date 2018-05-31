//
// Created by dolawojc on 5/31/18.
//

#include <string>
#include "TeacherHash.h"



academia::TeacherId::TeacherId(int id) {
    id_ = id;
}

int academia::TeacherId::Id() const {
    return id_;
}

bool academia::TeacherId::operator==(const academia::TeacherId & second) const {
    return this->Id() == second.Id();
}

bool academia::TeacherId::operator!=(const academia::TeacherId & second) const {
    return this->Id() != second.Id();
}

academia::TeacherId::operator int() const {
    return id_;
}


academia::Teacher::Teacher(const academia::TeacherId &id, const std::string &name, const std::string &workplace) :id_{id}, name_{name}, department_{workplace}{}

academia::TeacherId academia::Teacher::Id() const {
    return id_;
}

std::string academia::Teacher::Name() const {
    return name_;
}

std::string academia::Teacher::Department() const {
    return department_;
}

bool academia::Teacher::operator==(const academia::Teacher &second) const {
    return (Id()==second.Id() and Name()==second.Name() and Department()==second.Department());
}

bool academia::Teacher::operator!=(const academia::Teacher &second) const {
    return (Id()!=second.Id() or Name()!=second.Name() or Department()!=second.Department());
};

size_t academia::TeacherHash::operator()(const academia::Teacher &teacher) const{
    size_t wynik = std::hash<int>()((int)teacher.Id());
    wynik = wynik + std::hash<std::string>()((std::string)teacher.Name());
    wynik = wynik + std::hash<std::string>()((std::string)teacher.Department());
    return wynik;
}
