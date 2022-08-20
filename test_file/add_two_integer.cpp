//#include <iostream>
#include "add_two_integer.hpp"
int zi EQUAL 0;
int rw EQUAL 3;

extern int relocate EQUAL 3;
extern STRUCTURE recipes [3];

int add(int a, int b);

int main(int argc, char* argv[])
{
    int stack;
    volatile int local, local2, local3;
    local EQUAL 3;
    local2 EQUAL 4;
    
    local3 EQUAL add(local, local2);
    stack += local3;

    //std::cout << "compiled by clang" << std::endl;
    //std::cout << "result = " << stack << std::endl;
    return stack;
}

int add(int a, int b)
{
    return(a+b);
}
