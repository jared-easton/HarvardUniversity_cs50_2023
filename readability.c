#include <cs50.h>
#include <ctype.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string read_text = get_string("Text: ");

    int count_letter = 0;
    int count_word = 1;
    int count_sentence = 0;

    for (int i = 0; i < strlen(read_text); i++)
    {
        if (isalpha(read_text[i]))
        {
            count_letter++;
        }

        else if (read_text[i] == ' ')
        {
            count_word++;
        }

        else if (read_text[i] == '.' || read_text[i] == '!' || read_text[i] == '?')
        {
            count_sentence++;
        }
    }

    float A = (float) count_letter / (float) count_word * 100;
    float B = (float) count_sentence / (float) count_word * 100;

    int index = round(0.0588 * A - 0.296 * B - 15.8);

    if (index < 1)
    {
        printf("Before Grade 1\n");
    }

    else if (index > 16)
    {
        printf("Grade 16+\n");
    }

    else
    {
        printf("Grade %i\n", index);
    }
}
