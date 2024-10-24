lemma general_non_zero_times_inverse:
  fixes x :: real
  assumes "x \<noteq> 0"
  shows "x * (1 / x) = 1"
  by (simp add: assms)