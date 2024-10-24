import math

def area(a, b, c, d):
    area = (abs(c - b) + abs(d - a)) * (max(a, b, c, d) - min(a, b, c, d)) / 2
    return area

print(area(3, 7, 3, 5) + area(-1, 1, -1, 3))