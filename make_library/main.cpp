// Qeustion : why we don't use extern keyward??
#include <cstdio>
int add(int a, int b);
int mul(int a, int b);
int sub(int a, int b);
int div(int a, int b);
int cube(int a);

int main()
{
    int example_num = 1;
    example_num = add(example_num,example_num);
    example_num = mul(example_num,example_num);
    example_num = sub(example_num, 1);
    example_num = div(example_num,3);
    example_num = sub(example_num, 2);
    example_num = cube(example_num);
    printf("%i", example_num);
    //-1
    return example_num;
}