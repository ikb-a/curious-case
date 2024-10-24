import numpy as np

p = 7
numbers = range(1, p-1)
product = sum([x**(-1) % p for x in numbers])
print(product)