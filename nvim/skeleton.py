#import rich
#import itertools
#import functools
#import numpy as np

##Storing a direction is just the numbers -1, +1i, +1, -1i instead of up/right/down/left or north/east/south/west.
##Rotating the direction is just multiplying with -1i (clockwise) or +1i (counter-clockwise).
##In this example x == real == row and y == imag == col. When x and y are swapped, the rotation goes in the other direction`

#NEIGHBOURS_DELTAS = [complex(-1,0), complex(1,0), complex(0,-1),complex(0,1)]

ans = 0
with open("input.txt")  as f:
    for line in f:
        ans += int(line)
print(ans)
