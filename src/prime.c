#include <stdio.h>
#include <math.h>
#include <stdbool.h>

#include "prime.h"

void is_prime_number(unsigned long number) {
    unsigned long number_sqrt = sqrtl(number);

    while (number_sqrt > 1) {
	if ((number % number_sqrt) == 0)
	    break;
	number_sqrt--;
    }

    printf("%d\n", (number_sqrt == 1));
}
