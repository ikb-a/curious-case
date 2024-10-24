import sympy

from sympy import symbols

from sympy import solve

A, B, C, D = symbols('A B C D')
abcd = 42
abc = 2*A*B
bcd = 2*B*C
cda = 2*C*D
bda = 2*B*D
abd = 2*A*D
eq = sympy.Eq(abc + bcd - cda, abcd)
eq1 = sympy.Eq(bda, 2*bcd - cda)
eq2 = sympy.Eq(abd, 2*abc - cda)
solution = solve([eq, eq1, eq2], [A, B, C, D])
A_value, B_value, C_value, D_value = solution[0]
triangle = sympy.Polygon(A_value, B_value, C_value, D_value)
print(triangle.area)