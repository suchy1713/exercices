//
// Created by dolawojc on 09.05.18.
//

#include "Serialization.h"

using namespace academia;


// Room
Room::Room(int a, std::string b, Room::Type c) {
    id_ = a;
    no_ = b;
    type_ = c;
}

void Room::Serialize(Serializer * x) const {
    x->Header("room");
    x->IntegerField("id", id_);
    x->StringField("name", no_);
    x->StringField("type", EnumToString());
    x->Footer("room");
}

void Room::Serialize(Serializer * x) {
    x->Header("room");
    x->IntegerField("id", id_);
    x->StringField("name", no_);
    x->StringField("type", EnumToString());
    x->Footer("room");
}

std::string Room::EnumToString() const {
    switch(type_) {
        case Type::COMPUTER_LAB:
            return "COMPUTER_LAB";
        case Type::LECTURE_HALL:
            return "LECTURE_HALL";
        case Type::CLASSROOM:
            return "CLASSROOM";
    }
}


// Serializer
Serializer::Serializer(std::ostream *stream) {
    output_ = stream;
}

Serializer::Serializer() {
    *output_ << "";

}
// Json
void JsonSerializer::IntegerField(const std::string &field_name, int value) {
    *output_ << "\"" << field_name << "\": " << value << ", ";
}

void JsonSerializer::DoubleField(const std::string &field_name, double value) {
    *output_ << "\"" << field_name << "\": " << value << ", ";
}

void JsonSerializer::StringField(const std::string &field_name, const std::string &value) {
    *output_ << "\"" << field_name << "\": \"" << value << "\"";
    if (value!="COMPUTER_LAB" and value != "LECTURE_HALL" and value != "CLASSROOM" ) {
        *output_ << ", ";
    }
}

void JsonSerializer::BooleanField(const std::string &field_name, bool value) {
    *output_ << "\"" << field_name << "\": " << value << ", ";
}

void JsonSerializer::SerializableField(const std::string &field_name, const academia::Serializable &value) {
    value.Serialize(this);
}

void JsonSerializer::ArrayField(const std::string &field_name,
                                const std::vector<std::reference_wrapper<const academia::Serializable>> &value) {
    *output_ << "\"" << field_name << "\": [";
    int counter = 0;
    for( auto &current : value) {
        SerializableField(field_name, current);
        counter ++;

        if(counter < value.size()) {
            *output_ << ", ";
        }
    }
    *output_ << "]";
}

void JsonSerializer::Header(const std::string &object_name) {
    *output_ << "{";
}

void JsonSerializer::Footer(const std::string &object_name) {
    *output_ << "}";
}

JsonSerializer::JsonSerializer(std::ostream *out) : Serializer::Serializer(out) {
}
/*
JsonSerializer::JsonSerializer() {

}*/

// building
void Building::Serialize(Serializer *x) const {
    x->Header("building");
    x->IntegerField("id",id_);
    x->StringField("name", name_);
    x->ArrayField("rooms",rooms_);

    x->Footer("building");
}

void Building::Serialize(Serializer *x) {
    x->Header("building");
    x->IntegerField("id",id_);
    x->StringField("name", name_);
    x->ArrayField("rooms",rooms_);

    x->Footer("building");
}

Building::Building(int id, std::string name, std::vector<std::reference_wrapper<const academia::Serializable>> rooms) {
    id_ = id;
    name_ = move(name);
    rooms_ = move(rooms);
}

// xmlllll
/*
XmlSerializer::XmlSerializer() {
}*/

XmlSerializer::XmlSerializer(std::ostream *out) : Serializer(out) {
}

void XmlSerializer::IntegerField(const std::string &field_name, int value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::DoubleField(const std::string &field_name, double value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::StringField(const std::string &field_name, const std::string &value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::BooleanField(const std::string &field_name, bool value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::SerializableField(const std::string &field_name, const academia::Serializable &value) {
    value.Serialize(this);
}

void XmlSerializer::ArrayField(const std::string &field_name,
                               const std::vector<std::reference_wrapper<const academia::Serializable>> &value) {
    *output_ << "<" << field_name << ">";
    for( auto &current : value) {
        SerializableField(field_name, current);
    }
    *output_  << "<\\" << field_name << ">";
}

void XmlSerializer::Header(const std::string &object_name) {
    *output_ << "<" << object_name << ">";
}

void XmlSerializer::Footer(const std::string &object_name) {
    *output_ << "<\\" << object_name << ">";
}
