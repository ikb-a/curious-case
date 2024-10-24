x = 2*int(input())
y = int(input())
if x % 9 == y+5:
    print(x//9*100 + x%9)