# TODO

from cs50 import get_string

prompt = get_string("Input text: ")

ltr = 0
wrd = 1
sent = 0

for p in prompt:
    if p.isalpha():
        ltr += 1
    elif p == " ":
        wrd += 1
    elif p == "." or p == "!" or p == "?":
        sent += 1

l = ltr / wrd * 100
s = sent / wrd * 100

grd_lvl = 0.0588 * l - 0.296 * s - 15.8

if grd_lvl < 1:
    print("Before Grade 1")
elif grd_lvl > 17:
    print("Grade 16+")
else:
    print("Grade ", round(grd_lvl))
