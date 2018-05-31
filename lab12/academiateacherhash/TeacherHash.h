//
// Created by dolawojc on 5/31/18.
//

#ifndef JIMP_EXERCISES_TEACHERHASH_H
#define JIMP_EXERCISES_TEACHERHASH_H


namespace academia{


    class TeacherId {
    public:
        explicit TeacherId(int id);
        int Id() const;
        bool operator == (const TeacherId &) const;
        bool operator != (const TeacherId &) const;
        operator int() const;

    private:
        int id_;
    };

    class Teacher {
    public:
        Teacher(const TeacherId &id, const std::string &name,const std::string &workplace);
        bool operator== (const Teacher &) const;
        bool operator!= (const Teacher &) const;
        TeacherId Id() const;
        std::string Name() const;
        std::string Department() const;
    private:
        TeacherId id_;
        std::string name_;
        std::string department_;
    };

    class TeacherHash{
    public:
        size_t operator()(const Teacher &teacher) const;
    };
}


#endif //JIMP_EXERCISES_TEACHERHASH_H
