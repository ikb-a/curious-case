from sympy import symbols

from sympy import Function

x = symbols('x')
f = (6*x**3 + 4*x**2 - 11*x + 5)/(3*x**3 - 15*x + 20)
f.as_numer_denom()
c_value = solve(f.as_numer_denom()[0] - f.as_numer_denom()[1], c)
print(c_value[0])