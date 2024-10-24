lemma linear_equation_solution:
  fixes a b c d :: real
  assumes "a + b = c" "d + b = e"
  shows "b = (c - a) / 2"