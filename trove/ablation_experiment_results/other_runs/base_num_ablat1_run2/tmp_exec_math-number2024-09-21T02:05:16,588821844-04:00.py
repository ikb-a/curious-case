n = 4
while n>3:
    if (n*(n+1)//2)**2 == n**4:
        break
    else:
        n += 1
print(n)