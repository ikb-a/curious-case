import numpy as np

x = 720
a = 1
while (a**3)**(1/3) != x:
    a += 1
print(a**(1/3))