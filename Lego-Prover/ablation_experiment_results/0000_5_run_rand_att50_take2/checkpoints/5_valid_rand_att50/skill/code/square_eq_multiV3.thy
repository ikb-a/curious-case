lemma square_eq_multi:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2" and "(-a)^2 = (-b)^2"
  using assms by auto