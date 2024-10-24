import math

def is_prime(n):
    if n == 2 or n == 3:
        return True
    for i in range(2, int(math.sqrt(n)) + 1):
        if n % i == 0:
            return False
    return True

def main():
    count = 0
    for i in range(1, 10**8):
        if sum(int(j) for j in str(i)) == 9 and is_prime(i):
            count += 1
    print(count / (10**8 - 1))

if __name__ == "__main__":
    main()