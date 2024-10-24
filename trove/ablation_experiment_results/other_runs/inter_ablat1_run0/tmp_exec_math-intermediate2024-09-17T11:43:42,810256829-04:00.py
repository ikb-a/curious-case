import math
x = 0
while True:
    delta = math.sqrt(3*x + 6)
    if delta > 0:
        left = math.sqrt(x + delta)
        right = math.sqrt(x - delta)
        if left + right == 6:
            x = (left - right)**2 / (2*left + 2*right)
            print("x =", x)
            break
    else:
        print("no solution")
        break