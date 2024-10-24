lemma general_times_inverse:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "a * b * (1 / a) = b"
  using assms by (simp add: field_simps)