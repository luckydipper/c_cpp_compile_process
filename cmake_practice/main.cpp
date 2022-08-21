#include <iostream>
#include "foo.hpp"

int main()
{
    std::cout << "Hello Cmake" << std::endl;
    std::cout << "Foo : " << foo() << std::endl;
    return 0;
}