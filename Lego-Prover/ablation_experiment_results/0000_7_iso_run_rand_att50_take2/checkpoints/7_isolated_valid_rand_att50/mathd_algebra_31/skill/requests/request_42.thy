lemma square_both_sides:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b"
  using assms by auto