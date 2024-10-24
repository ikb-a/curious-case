import numpy as np

a = 3
while True:
    b = a + 1
    c = b + 1
    sum = a + b + c
    if sum**2 == 72361:
        print(max(a, b, c))
        break
    a = b