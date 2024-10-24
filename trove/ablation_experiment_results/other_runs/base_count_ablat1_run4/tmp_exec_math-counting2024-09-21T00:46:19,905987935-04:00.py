def f(n):
    return n * (n + 1) // 2

n = 1
while f(n) < n:
    n += 1
print(n)