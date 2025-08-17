#include <cs50.h>
#include <stdio.h>
#include <string.h>

const int BITS_IN_BYTE = 8;

void print_bulb(int bit);

int main(void)
{
    string text = get_string("Text: ");

    for (int i = 0, n = strlen(text); i < n; i++)
    {
        int zeros_ones[] = {0, 0, 0, 0, 0, 0, 0, 0};
        int dot = text[i];

        int j = 0;

        while (dot > 0)
        {
            zeros_ones[j] = dot % 2;
            dot = dot / 2;
            j++;
        }

        for (int k = BITS_IN_BYTE - 1; k >= 0; k--)
        {
            print_bulb(zeros_ones[k]);
        }
        printf("\n");
    }
}

void print_bulb(int bit)
{
    if (bit == 0)
    {
        // Dark emoji
        printf("\U000026AB");
    }
    else if (bit == 1)
    {
        // Light emoji
        printf("\U0001F7E1");
    }
}
