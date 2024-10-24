
def get_divisors(n):
    divisors = []
    for i in range(1, n + 1):
        if n % i == 0:
            divisors.append(i)
    return divisors

import math

from math import factorial

import numpy as np

from math import gcd


def gcd(a,b):
    while b:
        a,b = b,a%b
    return a



def count_prime_factors(n):
    factors = {}
    for p in range(2,int(n**0.5)+1):
        while n % p == 0:
            n //= p
            factors[p] = factors.get(p,0) + 1
    if n > 1:
        factors[n] = factors.get(n,0) + 1
    return factors


def gcd_list(l):
    if len(l) == 0:
        return 0
    else:
        return gcd(l[0], gcd_list(l[1:]))


def get_congruent_numbers(start, end, mod):
    return sum(1 for i in range(start, end + 1) if i % mod == 5)


def base_conversion(n, base):
    if n == 0:
        return '0'
    digits = []
    while n > 0:
        digits.append(str(n % base))
        n //= base
    return ''.join(reversed(digits))

import calendar

def get_divisors(n):
    divisors = []
    for i in range(1, n+1):
        if n % i == 0:
            divisors.append(i)
    return divisors

def count_prime_factors(n):
    factors = []
    while n % 2 == 0:
        factors.append(2)
        n = n / 2
    for i in range(3, int(math.sqrt(n))+1, 2):
        while n % i == 0:
            factors.append(i)
            n = n / i
    if n > 2:
        factors.append(n)
    return factors

def gcd_list(l):
    gcd = l[0]
    for num in l[1:]:
        gcd = math.gcd(gcd, num)
    return gcd

def get_congruent_numbers(start, end, mod):
    congruent_numbers = []
    for i in range(start, end+1):
        if i % mod == 0:
            congruent_numbers.append(i)
    return congruent_numbers

def base_conversion(n, base):
    digits = '0123456789ABCDEF'
    if n == 0:
        return '0'
    res = ''
    while n > 0:
        res = digits[n % base] + res
        n = n // base
    return res

def solution(start, end):
    count = 0
    for i in range(start, end+1):
        if len(get_divisors(i)) == 2:
            count += 1
    return count