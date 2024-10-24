lemma general_reciprocal_sum:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0"
  shows "x * (1 / x) + y * (1 / y) = 2"
  using reciprocal_sum_property[of x y] assms by simp