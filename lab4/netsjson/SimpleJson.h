//
// Created by suchy1713 on 03.04.18.
//

#ifndef JIMP_EXERCISES_SIMPLEJSON_H
#define JIMP_EXERCISES_SIMPLEJSON_H

#include <vector>
#include <map>
#include <string>
#include <experimental/optional>
#include <cstring>

using namespace std::string_literals;

namespace nets
{
    class JsonValue {
        public:
            JsonValue(int var);
            JsonValue(double var);
            JsonValue(bool var);
            JsonValue(std::string var);
            JsonValue(const std::vector<JsonValue> var);
            JsonValue(const std::map <std::string, JsonValue> var);
            std::experimental::optional<JsonValue> ValueByName(const std::string &name) const;
            std::string ToString() const;
            std::string Type() const;

        private:
            std::string type_;
            int var_int_;
            double var_double_;
            bool var_bool_;
            std::string var_string_;
            std::vector <JsonValue> var_vector_;
            std::map <std::string, JsonValue> var_map_;
    };
}



#endif //JIMP_EXERCISES_SIMPLEJSON_H
