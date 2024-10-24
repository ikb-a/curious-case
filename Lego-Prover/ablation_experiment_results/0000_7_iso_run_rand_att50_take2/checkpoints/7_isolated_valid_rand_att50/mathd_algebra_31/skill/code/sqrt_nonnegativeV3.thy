lemma sqrt_nonnegative:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  from assms show "sqrt a >= 0" by auto
qed