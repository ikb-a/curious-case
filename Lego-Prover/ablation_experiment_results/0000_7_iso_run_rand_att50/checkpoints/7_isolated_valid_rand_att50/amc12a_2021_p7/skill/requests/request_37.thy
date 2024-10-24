lemma minimum_value_of_quadratic:
  fixes a b c :: real
  assumes "a > 0"
  shows "a * (x - b)^2 + c >= c"