//
// Created by dolawojc on 30.05.18.
//

#ifndef JIMP_EXERCISES_TREE_H
#define JIMP_EXERCISES_TREE_H

#include <memory>


namespace tree {
    template <typename T>
    class Element {
    public:
        Element(T a) {val_ = a;};
        ~Element() = default;
        T val_;
        std::unique_ptr<Element<T>> left_ = nullptr;
        std::unique_ptr<Element<T>> parent_ = nullptr;
        std::unique_ptr<Element<T>> right_ = nullptr;
    };


    template <typename T>
    class Tree {
    public:
        Tree() = default;
        Tree(const T &val);
        ~Tree() = default;
        void Insert (const Element<T> &e);
        T Value() const;
        int Size() const;
        int Depth() const;

    private:
        std::unique_ptr<Element<T>> head_;
        int size_=0;
        int depth_=0;
    };

    template <typename T>
    void Tree<T>::Insert(const Element<T> &e) {
        Element<T> *current = head_.get();
        while(current!= nullptr){
            if(e.val_>current->val_) {
                current = current->right_.get();
            }
            else if(e.val_<current->val_) {
                current = current->left_.get();
            }
            else break;
        }
        current->val_ = e.val_;

/*
        if(e.val_>head_->val_) {
            i = move(i->right_);
        }

        else{
            i = move(i->left_);
        }

        do{
            if(e.val_>i->val_) {
                i = move(i->right_);
            }

            else{
                i = move(i->left_);
            }
        }while(i != nullptr);


        if(e.val_>i->val_) {
            i->right_ = move(n);
        }

        else{
            i->left_ = move(n);
        }*/


    }
    template <typename T>
    Tree<T>::Tree(const T &val) {
        Element<T> tmp(val);
        std::unique_ptr<Element<T>> a = std::make_unique<Element<T>>(tmp);
        head_ = move(a);
    }
    template <typename T>
    T Tree<T>::Value() const {
        return head_->val_;
    }
    template <typename T>
    int Tree<T>::Size() const {
        return size_;
    }
    template <typename T>
    int Tree<T>::Depth() const {
        return depth_;
    }
}


#endif //JIMP_EXERCISES_TREE_H
