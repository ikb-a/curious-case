import math

def digits(n):
    digits = []
    while n > 0:
        digits.append(n % 10)
        n //= 10
    return digits

def count(digits):
    count = 0
    for d in digits:
        if d == 0:
            continue
        if d % 2 == 0:
            count += math.floor(d/2)
        else:
            count += (d-1) // 2
    return count

for i in range(1, 10):
    print(count(digits(i)))