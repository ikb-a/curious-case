def F(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return F(n-1) + F(n-2) % 3

ans = 0
for n in range(2017, 2024):
    ans += F(n)

print(ans)