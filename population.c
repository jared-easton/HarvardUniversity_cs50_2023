#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int start;
    int end;
    do
    {
        start = get_int("Start Size: ");
    }
    while (start <= 8);

    {
        end = get_int("End Size: ");
    }
    while (end < start)
        ;

    int years = 0;

    while (start < end)
    {
        start = start + start / 3 - start / 4;
        years++;
    }
    printf("Years: %i\n", years);
    return 0;
}
