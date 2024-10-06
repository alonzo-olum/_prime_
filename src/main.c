#include <stdio.h>
#include <stdlib.h>

#include "prime.h"

int main(int argc, char ** argv)
{
    int num = atoi(argv[1]);
    unsigned long long_num = (unsigned long) num;

    is_prime_number(long_num);
}
