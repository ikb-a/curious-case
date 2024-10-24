lemma linear_equation_solution:
  fixes a b c x y :: complex
  assumes "a * x + b * y = c" and "b ≠ 0"
  shows "y = (c - a * x) / b"