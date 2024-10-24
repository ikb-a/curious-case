lemma square_root_property:
  fixes a b :: real
  assumes "a = sqrt b"
  shows "a^2 = b"
  by (simp add: assms)