lemma square_eq:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
  using assms by simp