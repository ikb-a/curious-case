x = symbols('x')
a, b, c = symbols('a b c')

expression = (x + a)**2 / (a - b)*(a - c) + (x + b)**2 / (b - a)*(b - c) + (x + c)**2 / (c - a)*(c - b)

print(expression)