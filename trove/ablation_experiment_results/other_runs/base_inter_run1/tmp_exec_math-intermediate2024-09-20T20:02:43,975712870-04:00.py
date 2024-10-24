import sympy

from sympy import symbols

from sympy import expand

a, b, c, d, e = symbols('a b c d e')
eq = (5*x**4 - 8*x**3 + 2*x**2 + 4*x + 7) / (x + 2)**4
eq_expanded = eq.expand()
eq_expanded = eq_expanded.subs(x, 0)
print(eq_expanded)