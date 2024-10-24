import math
def area(x1, y1, x2, y2, x3, y3, x4, y4):
    return (x1 - x3) * (y2 - y4) - (x1 - x4) * (y2 - y3)

x1, y1 = 0, 0
x2, y2 = 0, 68
x3, y3 = 50, 18
x4, y4 = 100, 100

print(area(x1, y1, x2, y2, x3, y3, x4, y4))