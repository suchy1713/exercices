//
// Created by dolawojc on 09.05.18.
//

#include "Serialization.h"

using namespace academia;

academia::Room::Room(int a, std::string b, academia::Room::Type c) {
    id_ = a;
    no_ = b;
    type_ = c;
}

void academia::Room::Serialize(academia::Serializer * x) const {
    x->Header("room");
    x->IntegerField("id", id_);
    x->StringField("number", no_);
    x->StringField("type", "COMPUTER_LAB");
    x->Footer("room");
}

academia::Serializer::Serializer(std::ostream *&) {

}
