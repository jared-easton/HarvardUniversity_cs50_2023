#include <cs50.h>
#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    // declare
    int Length;
    do
    {
        Length = get_int("Length: ");
    }
    while (Length < 1);

    int mult_by_two[Length];

    mult_by_two[0] = 1;
    printf("%i\n", mult_by_two[0]);
    for (int i = 1; i < Length; i++)
    {
        mult_by_two[i] = 2 * mult_by_two[i - 1];
        printf("%i\n", mult_by_two[i]);
    }
}
