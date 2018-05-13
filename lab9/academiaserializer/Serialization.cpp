//
// Created by dolawojc on 09.05.18.
//

#include "Serialization.h"

using namespace academia;
using namespace std;


// Room
Room::Room(int a, string b, Room::Type c) {
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

string Room::EnumToString() const {
    switch(type_) {
        case Type::COMPUTER_LAB:
            return "COMPUTER_LAB";
        case Type::LECTURE_HALL:
            return "LECTURE_HALL";
        case Type::CLASSROOM:
            return "CLASSROOM";
    }
}

int Room::Id() const {
    return id_;
}


// Serializer
Serializer::Serializer(ostream *stream) {
    output_ = stream;
}

Serializer::Serializer() {
    *output_ << "";

}
// Json
void JsonSerializer::IntegerField(const string &field_name, int value) {
    *output_ << "\"" << field_name << "\": " << value << ", ";
}

void JsonSerializer::DoubleField(const string &field_name, double value) {
    *output_ << "\"" << field_name << "\": " << value << ", ";
}

void JsonSerializer::StringField(const string &field_name, const string &value) {
    *output_ << "\"" << field_name << "\": \"" << value << "\"";
    if (value!="COMPUTER_LAB" and value != "LECTURE_HALL" and value != "CLASSROOM" ) {
        *output_ << ", ";
    }
}

void JsonSerializer::BooleanField(const string &field_name, bool value) {
    *output_ << "\"" << field_name << "\": " << value << ", ";
}

void JsonSerializer::SerializableField(const string &field_name, const Serializable &value) {
    value.Serialize(this);
}

void JsonSerializer::ArrayField(const string &field_name,
                                const vector<reference_wrapper<const Serializable>> &value) {
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

void JsonSerializer::Header(const string &object_name) {
    *output_ << "{";
}

void JsonSerializer::Footer(const string &object_name) {
    *output_ << "}";
}

JsonSerializer::JsonSerializer(ostream *out) : Serializer::Serializer(out) {
}
/*
JsonSerializer::JsonSerializer() {

}*/

// building
void Building::Serialize(Serializer *x) const {
    x->Header("building");
    x->IntegerField("id",id_);
    x->StringField("name", name_);
    x->ArrayField("rooms", this->ReffVectorRoom());
    x->Footer("building");
}

void Building::Serialize(Serializer *x) {
    x->Header("building");
    x->IntegerField("id",id_);
    x->StringField("name", name_);
    x->ArrayField("rooms", this->ReffVectorRoom());
    x->Footer("building");
}

vector<reference_wrapper<const Serializable>> Building::ReffVectorRoom() const{
    vector<reference_wrapper<const Serializable>> result;
    for (auto &room : rooms_) {
        result.emplace_back(cref(room));
    }
    return result;
}

Building::Building(int id, string name,  initializer_list<Room> rooms) {
    id_ = id;
    name_ = move(name);
    rooms_ = rooms;
}

int Building::Id() const {
    return id_;
}



// xmlllll
/*
XmlSerializer::XmlSerializer() {
}*/
XmlSerializer::XmlSerializer(ostream *out) : Serializer(out) {
}

void XmlSerializer::IntegerField(const string &field_name, int value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::DoubleField(const string &field_name, double value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::StringField(const string &field_name, const string &value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::BooleanField(const string &field_name, bool value) {
    *output_ << "<" << field_name << ">" << value << "<\\" << field_name << ">";
}

void XmlSerializer::SerializableField(const string &field_name, const Serializable &value) {
    value.Serialize(this);
}

void XmlSerializer::ArrayField(const string &field_name,
                               const vector<reference_wrapper<const Serializable>> &value) {
    *output_ << "<" << field_name << ">";
    for (auto &current : value) {
        SerializableField(field_name, current);
    }
    *output_ << "<\\" << field_name << ">";
}

void XmlSerializer::Header(const string &object_name) {
    *output_ << "<" << object_name << ">";
}

void XmlSerializer::Footer(const string &object_name) {
    *output_ << "<\\" << object_name << ">";
}

BuildingRepository::BuildingRepository( initializer_list<Building> buildings) {
    buildings_ = buildings;
}

void BuildingRepository::Add(const Building &building) {
    buildings_.emplace_back(building);
}

void BuildingRepository::StoreAll(Serializer *serializer) const {
    vector<reference_wrapper<const Serializable>> buildings(buildings_.begin(), buildings_.end());
    serializer->Header("building_repository");
    serializer->ArrayField("buildings", buildings);
    serializer->Footer("building_repository");
}

experimental::optional<Building> BuildingRepository::operator[](int x) const{
    for(auto building : buildings_){
        if (building.Id() == x) {
            return building;
        }
    }
}


