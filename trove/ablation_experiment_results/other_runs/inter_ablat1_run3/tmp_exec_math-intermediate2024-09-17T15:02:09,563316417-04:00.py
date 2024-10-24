from sympy import symbols

from sympy import solve

x, y = symbols('x y')
x1 = 1994
y1 = 1994
r = 1994**2
c = x**2 + y**2 - r
t = c.subs([(x, x1), (y, y1)])
x2, y2 = symbols('x2 y2')
eq = c - (x2 - x1)**2 - (y2 - y1)**2
sol = solve(eq, [x2, y2])
print(sol)