lemma distinct_nonzero_product:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y"
  shows "x + 2/x = y + 2/y ⟹ x * y = 2"