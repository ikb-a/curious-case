count = 0
for a in range(1, 101):
    for b in range(1, 101):
        for c in range(1, 101):
            if a**2 + b**2 + c**2 == ab + ac + bc:
                count += 1
print(count)