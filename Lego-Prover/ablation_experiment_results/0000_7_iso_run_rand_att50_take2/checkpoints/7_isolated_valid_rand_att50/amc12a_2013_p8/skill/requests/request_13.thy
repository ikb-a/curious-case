lemma factor_difference:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "(x - y) * (1 - 2/(x * y)) = 0"