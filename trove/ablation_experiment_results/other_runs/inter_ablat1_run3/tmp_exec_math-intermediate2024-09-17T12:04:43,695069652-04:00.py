from sympy import symbols

from sympy import Poly

from sympy.abc import z

a, b, c, d = symbols('a b c d')
P = 4*z**4 + a*z**3 + b*z**2 + c*z + d
P_values = [P.subs({a:1,b:1,c:1,d:1}).n() for a in range(0,5) for b in range(0,5) for c in range(0,5) for d in range(0,5)]
print(sum(P_values))