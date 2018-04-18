//
// Created by dolawojc on 3/30/18.
//

#include "SimpleTemplateEngine.h"
#include <iostream>

using namespace nets;

View::View(std::string source) {
    _text = source;
}

std::string View::Render(const std::unordered_map<std::string, std::string> &model) const {

    std::string source = _text;
    std::regex rgx("\\{\\{([^}]*)\\}\\}");

    for (auto x:model) {
        std::string currentField = "{{" + x.first + "}}";
        size_t index = 0;
        while (true) {
            index = source.find(currentField, index);
            if (index == std::string::npos) break;
            source.replace(index, currentField.length(), x.second);
            index += x.second.length();
        }
    }

    return std::regex_replace(source, rgx, "");

}
