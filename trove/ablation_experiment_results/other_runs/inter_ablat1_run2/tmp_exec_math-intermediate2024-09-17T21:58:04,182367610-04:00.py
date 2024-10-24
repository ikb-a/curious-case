def f(x):
    if 0 <= x < 2:
        return 2*x
    elif 2 <= x <= 4:
        return 8 - 2*x
    else:
        return 0

max_val = 0
max_x = 0
for x in range(0, 10):
    val = f(x)
    if val > max_val:
        max_val = val
        max_x = x
print("Maximum value of f(x) =", max_val)
print("x =", max_x)