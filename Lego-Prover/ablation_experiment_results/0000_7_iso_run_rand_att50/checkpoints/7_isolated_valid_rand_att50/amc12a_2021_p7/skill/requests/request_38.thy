lemma min_quadratic:
  fixes a b c :: real
  assumes "a > 0"
  shows "a * x^2 + b * x + c >= c - (b^2 / (4 * a))"