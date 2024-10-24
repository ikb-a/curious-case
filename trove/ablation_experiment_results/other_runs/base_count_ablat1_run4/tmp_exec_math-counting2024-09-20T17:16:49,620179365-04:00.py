n = 1
while True:
    prob = (n+1) * (1/5)**n * (4/5)**(n+1)
    if prob >= 3/4:
        break
    n += 1
print(n)