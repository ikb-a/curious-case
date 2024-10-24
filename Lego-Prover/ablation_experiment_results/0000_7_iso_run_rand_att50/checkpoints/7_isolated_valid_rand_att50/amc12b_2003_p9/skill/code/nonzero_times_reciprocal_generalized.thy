lemma nonzero_times_reciprocal_generalized:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
  using nonzero_times_reciprocal assms by simp