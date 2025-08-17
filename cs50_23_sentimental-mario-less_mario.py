# TODO

from cs50 import get_int

while True:
    h = get_int("Height: ")
    if h >= 1 and h <= 8:
        break

for a in range(0, h, 1):
    for b in range(0, h, 1):
        if a + b < h - 1:
            print(" ", end="")
        else:
            print("#", end="")
    print()
