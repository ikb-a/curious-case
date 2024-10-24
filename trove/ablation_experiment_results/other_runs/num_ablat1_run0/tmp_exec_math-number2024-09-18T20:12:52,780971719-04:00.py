import math

n = 2010
while True:
    n = n + 1
    if str(n/2010).count(".") == 0:
        break
print(n)