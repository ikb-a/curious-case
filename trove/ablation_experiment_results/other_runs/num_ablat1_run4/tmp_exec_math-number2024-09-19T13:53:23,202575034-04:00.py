num = 0
for i in range(100, 999):
    if i % 10 == 1 and i % 100 // 10 == 12:
        num = i
        break
print(num)