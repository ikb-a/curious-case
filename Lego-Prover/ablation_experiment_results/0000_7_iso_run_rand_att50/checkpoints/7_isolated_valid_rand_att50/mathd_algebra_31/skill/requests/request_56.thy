lemma square_root_property:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = b"
  shows "a = b^2"
  using assms by (simp add: power2_eq_square)