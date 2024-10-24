from sympy import symbols

from sympy import solve

a, b, c, d = symbols('a b c d')
expr = a*b**2*c**3*d**4
eq = a + b + c + d - 10
sol = solve(eq, [a, b, c, d])
expr_max = max(expr.subs(sol))
print(expr_max)