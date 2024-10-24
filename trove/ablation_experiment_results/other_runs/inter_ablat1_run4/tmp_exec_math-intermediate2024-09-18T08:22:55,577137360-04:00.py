from math import factorial

def binomial(n, k):
    return factorial(n) / (factorial(k) * factorial(n-k))

sum = 0
for n in range(17, 1000000000):
    sum += binomial(n, 15) / binomial(n, 17)
print(sum)