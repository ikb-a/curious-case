lemma square_root_square_eq:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt (a^2) = a"
  using assms by auto