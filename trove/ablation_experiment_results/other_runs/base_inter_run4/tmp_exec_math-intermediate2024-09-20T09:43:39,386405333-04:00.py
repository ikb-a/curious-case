import sympy as sym

f = sym.Function('f')
x = sym.Symbol('x')
g = f(x + 5)

roots = sym.roots(g)
print(roots)