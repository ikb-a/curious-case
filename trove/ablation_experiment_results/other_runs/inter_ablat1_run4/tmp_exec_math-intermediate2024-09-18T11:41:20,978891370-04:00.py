def f(x):
    if x >= 0 and x < 2:
        return 2*x
    elif x >= 2 and x <= 4:
        return 8 - 2*x
    else:
        return 0

x_max = 2
f_max = f(x_max)
print("The maximum value of the function is:", f_max)