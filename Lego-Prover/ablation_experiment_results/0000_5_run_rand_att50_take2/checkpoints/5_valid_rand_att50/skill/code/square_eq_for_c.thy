lemma square_eq_for_c:
  fixes a b c :: real
  assumes "a = b"
  shows "a^2 = b^2"
  using square_eq_generalized[of a b] assms by simp