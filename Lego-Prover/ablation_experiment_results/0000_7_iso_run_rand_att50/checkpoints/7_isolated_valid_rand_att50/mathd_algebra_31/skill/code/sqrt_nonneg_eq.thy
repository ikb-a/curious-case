lemma sqrt_nonneg_eq:
  fixes a b :: real
  assumes "a = b" "a >= 0" "b >= 0"
  shows "sqrt a = sqrt b"
  using assms by (simp add: field_simps)