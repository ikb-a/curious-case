lemma division_by_nonzero:
  fixes x :: real
  assumes "a \<noteq> 0"
  shows "x / a = x * (1 / a)"
  using nonzero_division_property[of a x] assms by simp