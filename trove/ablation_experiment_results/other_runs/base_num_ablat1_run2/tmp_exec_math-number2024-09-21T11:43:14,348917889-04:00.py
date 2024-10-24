def is_prime(n):
    if n == 1 or n == 0:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True


def least_possible_sum():
    primes = [2, 3, 5]
    while True:
        sum = primes[-1] + primes[-2] + primes[-3]
        if sum % 7 == 0 and is_prime(sum):
            return sum
        primes.append(next(p for p in range(primes[-1] + 1, 1000000000000) if is_prime(p)))


print(least_possible_sum())