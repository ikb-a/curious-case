import math

import numpy as np

from math import factorial


def get_divisors(n):
    divisors = []
    for i in range(1, n + 1):
        if n % i == 0:
            divisors.append(i)
    return divisors

from math import gcd

import math

nums = []
for i in range(1, 1000000):
    if i % 4 == 0:
        nums.append(i)

divisors = []
for num in nums:
    divisors.append(get_divisors(num))

divisors = np.array(divisors)

gcds = []
for i in range(len(divisors)):
    for j in range(i+1, len(divisors)):
        gcds.append(gcd(divisors[i], divisors[j]))

gcds = np.array(gcds)

print(max(gcds))