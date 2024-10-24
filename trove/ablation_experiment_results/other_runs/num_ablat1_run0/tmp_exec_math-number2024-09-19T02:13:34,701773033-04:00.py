import math

def perfect_square(n):
    return (n*(n+1)*(2*n+1))**.5

def perfect_fourth_power(n):
    return (n*(n+1)*(2*n+1))**4

for i in range(4,100000000):
    if perfect_square(i) == perfect_fourth_power(i):
        print(i)
        break