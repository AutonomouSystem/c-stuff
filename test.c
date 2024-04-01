#include <stdio.h>
#include <stdbool.h>

void test(void)
{
    printf("Hello, World!!\n");
}

int test2(int n, int m)
{
    return n + m;
}

bool test3(void)
{
    return true;
}

double test4(void)
{
    return 3.141592653589793;
}

float test5(void)
{
    return 3.14159265;
}

char test6(void)
{
    return 'a';
}
 
int main(void)
{
    const char* test_hello = "Hello!!\n";
    printf("%s", test_hello);
    test();
    printf("This is a int: %d\n", test2(1, 2));
    printf("This is a bool: %b\n", test3());
    printf("This is a double: %.10f\n", test4());
    printf("This is a float: %f\n", test5());
    printf("This is a char: %c\n", test6());
    return 0;
}
