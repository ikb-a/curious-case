lemma square_root_eq_general:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "sqrt a = sqrt b"
  using assms by auto