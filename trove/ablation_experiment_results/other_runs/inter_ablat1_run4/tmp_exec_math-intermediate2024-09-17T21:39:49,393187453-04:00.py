from sympy import *
x = Symbol('x')
expression = (2*x**2001 + 3*x**2000 + 2*x**1999 + 3*x**1998 + 2*x + 3)
solutions = solve(expression, x)
print(len(solutions))