from sympy import I

from sympy import symbols

from sympy import log

from sympy import expand

import sympy

from sympy import solve

from sympy import factor

import itertools

from sympy import sqrt

from sympy import sympy

from sympy import binomial

from sympy import diff

from math import factorial

import cmath

from sympy import Poly

from math import floor

from itertools import count

from sympy import Eq

from sympy import simplify

from sympy.abc import x

from sympy import Abs

import math

from sympy import Function

from sympy import Subs


def arithmetic_sequence(a1, a2, b1, b2):
    return (b2 - b1) / (a2 - a1)



def geometric_sequence(a1, a2, b1, b2):
    return b2 / b1



def eighth_term(a1, a2, b1, b2):
    return (a2 + b2) / 2

from sympy import floor

import random

from sympy.abc import I

from sympy import poly

from math import sqrt

from decimal import Decimal

from itertools import product

from sympy import I

from sympy import symbols

from sympy import log

from sympy import expand

from sympy import solve

import sympy

from sympy import factor

import itertools

from sympy import sqrt

from sympy import sympy

x = symbols('x')
expr1 = 1/(7 - x) * (1 + x) * (1 - x) + 3*x**2 - 18*x - 22/(x**2 - 1) * (x - 7) + 3/(x - 2)
expr2 = 3/(x - 1) * (x - 2)
expr = expr1 - expr2

# find the number of solutions
solutions = []
for factor in itertools.permutations(expr.factor().args):
    try:
        sol = solve(factor, x)
        solutions.append(sol)
    except:
        pass

print(len(solutions))