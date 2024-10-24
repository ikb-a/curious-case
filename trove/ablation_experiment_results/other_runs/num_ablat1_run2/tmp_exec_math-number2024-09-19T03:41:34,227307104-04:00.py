n = 120
a = 1
b = 2
c = 3
x = 0
while n > 1:
    if n % a == 0:
        x += 1
        n = n / a
    else:
        a += 1
        b += 1
        c += 1
print(a + b + c)