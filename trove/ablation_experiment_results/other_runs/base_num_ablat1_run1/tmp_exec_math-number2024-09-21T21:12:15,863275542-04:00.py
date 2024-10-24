from math import floor

def convert_to_base_5(num):
    if num == 0:
        return '0'
    base_5_digits = []
    while num > 0:
        base_5_digits.append(str(num % 5))
        num //= 5
    base_5_digits.reverse()
    return ''.join(base_5_digits)

quotient = 413_5 // 2_5
print(convert_to_base_5(quotient))