
def is_prime(n):
    if n == 1 or n == 0:
        return False
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True

sum_of_binary = 0
for i in range(100000000):
    sum_of_binary += i
largest_prime_divisor = 0
for i in range(100000000):
    if sum_of_binary % i == 0 and is_prime(i):
        largest_prime_divisor = i
        break
print(largest_prime_divisor)