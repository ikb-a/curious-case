lemma general_non_zero_times_inverse:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "a * (b / a) = b"
  using assms by auto