#include <stdio.h>
#include <stdbool.h>

void test(void)
{
	printf("Hello, World!\n");
}

int test2(int n, int m)
{
    return n + m;
}

bool test3(void)
{
    return true;
}
 
int main(void)
{
    const char* test_hello = "Hello!!\n";
    printf("%s", test_hello);
    test();
    test2(1, 2);
    test3();
    return 0;
}
