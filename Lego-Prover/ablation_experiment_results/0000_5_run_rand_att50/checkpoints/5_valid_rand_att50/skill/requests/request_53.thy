lemma distinct_variables:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" "x \<noteq> y"
  shows "x * y = 2"