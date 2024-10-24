lemma square_eq_with_assumption:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
  using assms by (simp add: square_eq_general)