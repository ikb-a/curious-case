lemma sqrt_property:
  fixes a b :: real
  assumes "a = sqrt b" and "b >= 0"
  shows "a^2 = b"
  using assms by (simp add: power2_eq_square)