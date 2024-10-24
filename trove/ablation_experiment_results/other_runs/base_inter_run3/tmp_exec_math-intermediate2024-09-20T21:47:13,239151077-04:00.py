p = 1
for i in range(1, 16):
    p *= (1+i*x) * (1-i*x)
print(p)