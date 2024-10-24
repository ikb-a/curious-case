import numpy as np

# Modulo 16
numbers = [1, 3, 5, 7, 9, 11, 13, 15]
inverses = [np.modf(1.0/number)[0] for number in numbers]

# Modulo 16 Sum
sum = np.sum(inverses)

# Modulo 16 Residue
residue = np.modf(sum)[0]
print(residue)