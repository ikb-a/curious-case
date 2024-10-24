lemma reciprocal_multiplication:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
  using nonzero_division_property[of a] assms by simp