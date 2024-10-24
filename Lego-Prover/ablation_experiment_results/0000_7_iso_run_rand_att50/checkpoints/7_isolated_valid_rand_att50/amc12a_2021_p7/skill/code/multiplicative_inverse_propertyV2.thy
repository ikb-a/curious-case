lemma multiplicative_inverse_property:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "1 / a * a = 1"
  using assms by (simp add: field_simps)