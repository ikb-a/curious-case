n = 0
while True:
    try:
        if (x + 3) * (x - 7) ** 5 == (x - 1) * (x - 7) ** n:
            print(n)
            break
    except:
        n += 1