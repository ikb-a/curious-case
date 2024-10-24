import sympy

from sympy import symbols

from sympy import solve

z = symbols('z')
omega = symbols('omega', nonreal=True)
n = symbols('n')
eq = z**3 - 1
sol = solve(eq, z)
omega_value = sol[0]
omega_plus_one = omega + 1
omega_plus_one_to_power_n = omega_plus_one**n
omega_plus_one_to_power_n_value = solve(omega_plus_one_to_power_n, n)
print(omega_plus_one_to_power_n_value)