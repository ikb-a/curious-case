lemma factor_difference:
  fixes x y :: real
  assumes "x \<noteq> y"
  shows "x - y = (x - y) * 1"