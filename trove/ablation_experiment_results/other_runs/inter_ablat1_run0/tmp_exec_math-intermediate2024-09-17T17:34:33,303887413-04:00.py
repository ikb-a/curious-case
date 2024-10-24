def f(m, n):
    if m == 1 and n == 1:
        return 1
    elif m > 1 and n > 1:
        return f(m - 1, n) + f(m, n - 1) + f(m - 1, n - 1)
    else:
        return 0


def S(k):
    return sum(f(a, b) for a in range(1, k + 1) for b in range(1, k + 1) if a + b == k)


def pq(k):
    return S(k + 2) - p * S(k + 1) - q * S(k)


p, q = 1, 1
while pq(1) != 0:
    p, q = p + 1, q + 1

print(p * q)