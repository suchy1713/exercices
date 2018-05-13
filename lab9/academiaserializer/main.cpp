//
// Created by dolawojc on 09.05.18.
//

#include "Serialization.h"

using namespace std;
using namespace academia;

int main() {
    stringstream out;
    JsonSerializer ser(&out);
    Room p(2,"xD", Room::Type::CLASSROOM);
    Building b(1,"jajebe",{p});
    BuildingRepository buildings{};
    cout<< sizeof(buildings)<<endl;
    buildings.StoreAll(&ser);
    std::vector<std::reference_wrapper<const Serializable>> empty;
    cout<< sizeof(empty)<<endl;
    cout<< sizeof(p)<<endl;
}