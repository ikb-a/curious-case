from math import log, ceil

def is_solution(x):
    return (8*log(x, n) * log(x, m) - 7*log(x, n) - 6*log(x, m) - 2013) == 0

def get_smallest_integer(m, n):
    lower_bound = ceil(1/n)
    upper_bound = ceil(1/m)
    for x in range(lower_bound, upper_bound + 1):
        if is_solution(x):
            return x

m = int(input("Enter m: "))
n = int(input("Enter n: "))
print(get_smallest_integer(m, n))