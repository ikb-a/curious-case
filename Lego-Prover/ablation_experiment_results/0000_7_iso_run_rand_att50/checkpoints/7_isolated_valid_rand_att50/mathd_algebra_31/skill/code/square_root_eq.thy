lemma square_root_eq:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b"
  using assms by simp