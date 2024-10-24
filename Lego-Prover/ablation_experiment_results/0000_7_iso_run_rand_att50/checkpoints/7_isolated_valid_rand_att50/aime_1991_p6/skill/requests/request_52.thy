lemma solve_linear_inequality:
  fixes a b c :: real
  assumes "a * x + b < c"
  shows "x < (c - b) / a"