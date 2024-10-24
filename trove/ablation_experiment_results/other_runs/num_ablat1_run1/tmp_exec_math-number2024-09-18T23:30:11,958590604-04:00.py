def is_perfect_square(x):
    return int(x**0.5)**2 == x

max_len = 0
for i in range(100, 1000):
    for j in range(100, 1000):
        for k in range(100, 1000):
            if is_perfect_square(i) and is_perfect_square(j) and is_perfect_square(k):
                if sorted([i, j, k]) == sorted([j, i, k]) == sorted([k, i, j]):
                    max_len = max(max_len, len(sorted([i, j, k])))
print(max_len)