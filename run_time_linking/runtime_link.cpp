#include <dlfcn.h>
#include <stdio.h>

int main(int argc, char **argv) 
{
    int one = 1;
    int result;
    char *error;
    int (*ptr_sum)(int, int) = NULL;

    void *handle = dlopen ("/home/qhrqufdlek/desktop/c_cpp_compile_process/make_library/libarithmetic_operation.so", RTLD_LAZY);

    if(handle == NULL) 
    {
        printf("%s\n", dlerror());
        return 1;
    }
    ptr_sum = (int (*)(int, int))dlsym(handle, "_Z3addii");
    // name mangling 된 것까지 symboltable 보고 가져 오기 
    // 아니면 defintion에 extern "C" keyward를 사용하여, name mangling 막기.
    printf("%s\n", dlerror());
    if((error = dlerror()) != NULL) 
    {

        printf("error\n");
        dlclose(handle);
        return 1;
    }

    printf("%i \n", ptr_sum(one, one));
    dlclose(handle);

    return 0;
}
