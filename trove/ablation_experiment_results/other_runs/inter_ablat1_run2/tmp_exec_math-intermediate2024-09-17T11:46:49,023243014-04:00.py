import sympy

from sympy import symbols

from sympy import solve

z = symbols('z')
eq = z + 1/z - 1
z_value = solve(eq, z)
print(z_value[0])