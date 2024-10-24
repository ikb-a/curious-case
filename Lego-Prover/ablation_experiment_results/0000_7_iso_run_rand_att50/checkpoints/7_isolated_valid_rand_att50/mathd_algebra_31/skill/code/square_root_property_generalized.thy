lemma square_root_property_generalized:
  fixes a b :: real
  assumes "a = sqrt b" and "b >= 0"
  shows "a^2 = b"
  by (simp add: assms)