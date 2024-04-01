#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

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
    return 3.141592653589793; }

float test5(void)
{
    return 3.14159265;
}

char test6(void)
{
    return 'a';
}

long test7(void)
{
    return 1234567890;
}

short test8(void)
{
    return 12345;
}

unsigned short test9(void)
{
    return 12345;
}

unsigned int test10(void)
{
    return 1234567890;
}

unsigned long test11(void)
{
    return 1234567890;
}

size_t test12(void)
{
    return 1234567890;
}

struct Point
{
    int x;
    int y;
};

struct Point test13(void)
{
    return (struct Point) { 10, 20 };
}

enum Color
{
    RED   = 0xFF0000,
    GREEN = 0x00FF00,
    BLUE  = 0x0000FF
};

enum Color test14(void)
{
    return BLUE;
}

int * test15(void)
{
    int* ptr = (int*)malloc(sizeof(int));
    *ptr = 42;
    return ptr;
}

int main(void) {
  const char *test_hello = "Hello!!\n";
  printf("%s", test_hello);
  test();
  printf("This is a int: %d\n", test2(1, 2));
  printf("This is a bool: %s\n", test3() ? "true" : "false");
  printf("This is also a bool: %d\n", test3());
  printf("This is a double: %.10f\n", test4());
  printf("This is a float: %f\n", test5());
  printf("This is a char: %c\n", test6());
  printf("This is a long: %ld\n", test7());
  printf("This is a short: %d\n", test8());
  printf("This is a unsigned short: %d\n", test9());
  printf("This is a unsigned int: %u\n", test10());
  printf("This is a unsigned long: %lu\n", test11());
  // size_t size = test12();
  // printf("This is a size_t: %zu\n", size);

  struct Point p = test13();
  printf("This is a struct Point (p.x, p.y): {%d, %d}\n", p.x, p.y); 
  printf("This is an enum Color BLUE: 0x%06X\n", test14());
  int *result = test15();
  printf("Value pointed to by the pointer: %d\n", *result);
  printf("Address of the pointer: %p\n", result);
  free(result);

  return 0;
}
