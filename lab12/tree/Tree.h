#ifndef JIMP_EXERCISES_TREE_H
#define JIMP_EXERCISES_TREE_H

#include <memory>
#include <algorithm>
#include <utility>

namespace tree {
    template <typename T>
    class Node {
    public:
        Node(T a) {val_ = a;};
        Node(const Node<T>&);
        Node(Node<T>&&);
        Node &operator=(const Node<T>&);
        Node &operator=(Node<T>&&);
        ~Node() = default;
        T val_;
        Node<T>* left_ = nullptr;
        Node<T>* parent_ = nullptr;
        Node<T>* right_ = nullptr;
    };

    template <typename T>
    Node<T>::Node(const Node<T>& x){
        left_ = new Node<T>;
        std::copy(left_, left_ + sizeof(Node<T>), x.left_);
        right_ = new Node<T>;
        std::copy(right_, right_ + sizeof(Node<T>), x.right_);
        parent_ = new Node<T>;
        std::copy(parent_, parent_ + sizeof(Node<T>), x.parent_);
    }

    template <typename T>
    Node<T>::Node(Node<T>&& x){
        std::swap(left_, x.left_);
        std::swap(right_, x.right_);
        std::swap(parent_, x.parent_);
    }

    template <typename T>
    Node<T> & Node<T>::operator=(const Node<T>& x){
        if (this == &x) {
            return *this;
        }

        delete right_;
        delete left_;
        delete parent_;

        left_ = new Node<T>;
        std::copy(left_, left_ + sizeof(Node<T>), x.left_);
        right_ = new Node<T>;
        std::copy(right_, right_ + sizeof(Node<T>), x.right_);
        parent_ = new Node<T>;
        std::copy(parent_, parent_ + sizeof(Node<T>), x.parent_);
    }

    template <typename T>
    Node<T> & Node<T>::operator=(Node<T>&& x){
        if (this == &x) {
            return x;
        }

        delete right_;
        delete left_;
        delete parent_;

        left_ = nullptr;
        right_ = nullptr;
        parent_ = nullptr;
        std::swap(left_, x.left_);
        std::swap(right_, x.right_);
        std::swap(parent_, x.parent_);
    }

    template <typename T>
    class Tree {
    public:
        Tree() = default;
        Tree(T val);
        ~Tree() = default;
        Node<T>* ActualInsert(Node<T>*, T, int);
        void Insert (T e);
        T Value() const;
        int Size() const;
        int Depth() const;

    private:
        Node<T>* head_ = nullptr;
        int size_=0;
        int depth_=0;
    };

    template <typename T>
    Node<T>* Tree<T>::ActualInsert(Node<T>* curr, T e, int d) {
        if(curr == nullptr){
            Node<T> tmp(e);
            curr = &tmp;
            depth_++;
            return curr;
        }

        else if(e <= curr->val_){
            curr->left_ = ActualInsert(curr->left_, e, ++d);
        }

        else{
            curr->right_ = ActualInsert(curr->right_, e, ++d);
        }

        if(d > depth_){
            depth_++;
        }

        return curr;
    }

    template <typename T>
    void Tree<T>::Insert(T e) {
        if(head_ == nullptr){
            head_ = ActualInsert(head_ ,e, 0);
        }

        else{
            ActualInsert(head_ ,e, 0);
        }

        size_ += 1;
    }

    template <typename T>
    Tree<T>::Tree(T val) {
        Insert(val);
    }

    template <typename T>
    T Tree<T>::Value() const {
        T x = head_->val_;
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