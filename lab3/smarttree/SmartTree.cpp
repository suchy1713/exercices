//
// Created by dolawojc on 3/18/18.
//

#include "SmartTree.h"
#include <ostream>
#include <string>
#include <sstream>
#include <memory>
#include <stdio.h>
#include <iostream>


namespace datastructures {
    std::unique_ptr <SmartTree> CreateLeaf(int value){
        std::unique_ptr <SmartTree> a = std::make_unique<SmartTree>();
        a->value = value;
        a->left = nullptr;
        a->right = nullptr;
        return a;
    }

    std::unique_ptr <SmartTree> InsertLeftChild(std::unique_ptr<SmartTree> tree, std::unique_ptr<SmartTree> left_subtree) {
        if(tree->left == nullptr) {
            tree->left = std::move(left_subtree);
            return tree;
        }
        return 0;

    }
    std::unique_ptr <SmartTree> InsertRightChild(std::unique_ptr<SmartTree> tree, std::unique_ptr<SmartTree> right_subtree) {
        if(tree->right == nullptr) {
            tree->right = std::move(right_subtree);
            return tree;
        }

        return 0;
    }
    void PrintTreeInOrder(const std::unique_ptr<SmartTree> &unique_ptr, std::ostream *out) {
        if ( unique_ptr != nullptr) {
            PrintTreeInOrder( unique_ptr->left, out);
            *out << unique_ptr->value << ", ";
            PrintTreeInOrder( unique_ptr->right, out);
        }


    }

    std::string DumpTree(const std::unique_ptr<SmartTree> &tree) {
        std::string current_string = "[" + std::to_string(tree->value);
        if(tree->left != nullptr) {
            current_string += " "+DumpTree(tree->left);
        }
        else {
            current_string += " [none]";
        }
        if(tree->right != nullptr) {
            current_string += " "+DumpTree(tree->right);
        }
        else {
            current_string += " [none]";
        }
        current_string += "]";
        return current_string;

    }

    std::unique_ptr <SmartTree> Deserialization(std::stringstream& ss) {
        std::string value;
        ss >> value;
        if (value == "none") {
            return nullptr;
        }
        else {
            int value_int;
            value_int = std::stoi(value);
            std::unique_ptr <SmartTree> new_node = CreateLeaf(value_int);
            new_node->left = Deserialization(ss);
            new_node->right = Deserialization(ss);
            return new_node;
        }


    }

    std::unique_ptr <SmartTree> RestoreTree(const std::string &tree){
        std::string tmp = tree;
        for (int i=0; i<tmp.size(); i++) {
            if(tmp[i]=='[' or tmp[i]==']') {
                tmp.erase(i,1);
                i--;
            }
        }
        std::stringstream ss(tmp);
        return Deserialization(ss);
    }


}
