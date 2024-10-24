from itertools import count

n = 3
while True:
    s = sum(map(int, str(n*(n+1))))
    if s > 10000:
        print(n)
        break
    n += 1