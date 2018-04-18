//
// Created by suchy1713 on 03.04.18.
//

#include "SimpleJson.h"
#include <sstream>

using namespace nets;
using namespace std::string_literals;
using namespace std;

std::string tmp(std::string aaa)
{
    std::string ret = aaa;


    for(int i = 0; i < ret.length(); i++)
    {
        if(ret[i] == '"' or ret[i] == '\\'){
            ret.insert(i, 1, '\\');
            i += 1;
        }
    }

    return ret;
}

JsonValue::JsonValue(int var)
{
    type_ = "int";
    var_int_ = var;
}

JsonValue::JsonValue(double var)
{
    type_ = "double";
    var_double_ = var;
}

JsonValue::JsonValue(bool var)
{
    type_ = "bool";
    var_bool_ = var;
}

JsonValue::JsonValue(std::string var)
{
    type_ = "string";
    var_string_ = var;
}

JsonValue::JsonValue(const std::vector<JsonValue> var)
{
    type_ = "vector";
    var_vector_ = var;
}

JsonValue::JsonValue(const std::map <std::string, JsonValue> var)
{
    type_ = "map";
    var_map_ = var;
}

std::experimental::optional<JsonValue> JsonValue::ValueByName(const std::string &name) const
{
    if(type_ != "map")
        return {};

    else
    {
        return std::experimental::make_optional(var_map_.find(name)->second);
    }
}

std::string JsonValue::ToString() const
{
    if(type_ == "string"){
        std::string ret = '"' + var_string_ + '"';

        for(int i = 1; i < ret.length()-1; i++)
        {
            if(ret[i] == '"' or ret[i] == '\\'){
                ret.insert(i, 1, '\\');
                i += 1;
            }
        }

        return ret;
    }

    else if(type_ == "int")
    {
        std::stringstream temp;
        temp << var_int_;
        return temp.str();
    }

    else if(type_ == "double")
    {
        std::stringstream temp;
        temp << var_double_;
        return temp.str();
    }

    else if(type_ == "bool")
    {
        if(var_bool_)
            return "true";

        return "false";
    }

    else if(type_ == "vector")
    {
        std::string ret = "[";

        for(int i=0; i < var_vector_.size(); i++){
            if(i != 0)
                ret += ", ";

            ret += var_vector_[i].ToString();
        }

        return ret + "]";
    }

    else if(type_ == "map")
    {
        std::string ret = "{";

        for(auto i = var_map_.cbegin(); i != var_map_.cend(); i++){
            if(i != var_map_.cbegin())
                ret += ", ";
            ret += '"';
            ret += tmp(i->first);
            ret += '"';
            ret += ": ";
            ret += i->second.ToString();
        }

        return ret + "}";
    }
}