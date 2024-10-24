lemma a_times_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
  using assms by (auto simp: field_simps)