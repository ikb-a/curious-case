lemma square_root_eq_for_nonnegative:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "sqrt a = sqrt b"
  using assms square_root_eq_general by simp