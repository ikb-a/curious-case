import math

def is_prime(number):
    if number < 2:
        return False
    for i in range(2, int(number ** 0.5) + 1):
        if number % i == 0:
            return False
    return True

def sum_digits(number):
    return sum(int(digit) for digit in str(number))

numbers = [i for i in range(1, 10**8) if sum_digits(i) == 9 and is_prime(i)]
probability = len(numbers) / (10**8 - 1)
print(probability)