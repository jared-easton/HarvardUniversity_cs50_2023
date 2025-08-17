# TODO

from cs50 import get_float

while True:
    cent = get_float("Change: ")
    if cent >= 0.01:
        break

cent = round(cent * 100)

total = 0

while cent > 24:
    cent = cent - 25
    total += 1

while cent > 9:
    cent = cent - 10
    total += 1

while cent > 4:
    cent = cent - 5
    total += 1

while cent > 0:
    cent = cent - 1
    total += 1

print("Total Coin Count: ", total)
