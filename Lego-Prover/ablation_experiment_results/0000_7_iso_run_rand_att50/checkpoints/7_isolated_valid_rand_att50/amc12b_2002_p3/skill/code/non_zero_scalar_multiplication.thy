lemma non_zero_scalar_multiplication:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "(a * b) / a = b"
  using assms by (simp add: field_simps)