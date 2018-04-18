//
// Created by dolawojc on 3/30/18.
//

#ifndef JIMP_EXERCISES_SIMPLETEMPLATEENGINE_H
#define JIMP_EXERCISES_SIMPLETEMPLATEENGINE_H

#include <string>
#include <unordered_map>
#include <regex>

namespace nets {
    class View {
    public:
        View(std::string);
        std::string Render(const std::unordered_map <std::string, std::string> &model) const;

    private:
        std::string _text;
    };
}


#endif //JIMP_EXERCISES_SIMPLETEMPLATEENGINE_H
