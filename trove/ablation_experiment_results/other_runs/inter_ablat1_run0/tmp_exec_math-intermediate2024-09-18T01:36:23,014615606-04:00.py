product = 1
for i in range(1998, 0, -1):
    product *= i**2 - (i-1)**2
print(product)