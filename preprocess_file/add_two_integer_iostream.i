# 1 "add_two_integer.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 382 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "add_two_integer.cpp" 2

# 1 "./add_two_integer.h" 1



struct STRUCTURE
{
    bool member_bool;
    int member_int;
    double member_double;
};
# 3 "add_two_integer.cpp" 2
int zi = 0;
int rw = 3;

extern int relocate = 3;
extern STRUCTURE recipes [3];

int add(int a, int b);

int main(int argc, char* argv[])
{
    int stack;
    volatile int local, local2, local3;
    local = 3;
    local2 = 4;

    local3 = add(local, local2);
    stack += local3;



    return stack;
}

int add(int a, int b)
{
    return(a+b);
}
