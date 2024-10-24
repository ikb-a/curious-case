def find_common_digit(x, y):
    common_digit = []
    for i in range(len(x)):
        if x[i] == y[i]:
            common_digit.append(x[i])
    return common_digit


def convert_to_base(n, b):
    if n == 0:
        return [0]
    digits = []
    while n > 0:
        digits.append(int(n % b))
        n //= b
    return digits[::-1]


def solve(n):
    base_7 = convert_to_base(n, 7)
    base_8 = convert_to_base(n, 8)
    return len(find_common_digit(base_7, base_8))


print(solve(629))