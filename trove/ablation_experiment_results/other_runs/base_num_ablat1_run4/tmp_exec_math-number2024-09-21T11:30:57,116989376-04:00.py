m = 2**1980 * 3**384 * 5**1694 * 7**343
for k in range(2, 1000):
    if pow(m, 1/k, 1) == 1:
        print(k)