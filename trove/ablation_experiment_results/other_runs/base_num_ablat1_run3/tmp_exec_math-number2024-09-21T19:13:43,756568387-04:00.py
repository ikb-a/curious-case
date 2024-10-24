# Base 5 representation of 413_5
base5_quotient = [4, 1, 3]

# Base 5 representation of 2_5
base5_divisor = [2]

# Quotient of 413_5 divided by 2_5
base5_quotient = [base5_quotient[i] // base5_divisor[i] for i in range(len(base5_quotient))]

# Remainder of 413_5 divided by 2_5
base5_remainder = [base5_quotient[i] % base5_divisor[i] for i in range(len(base5_quotient))]

# Print base 5 quotient
print(base5_quotient)

# Print base 5 remainder
print(base5_remainder)