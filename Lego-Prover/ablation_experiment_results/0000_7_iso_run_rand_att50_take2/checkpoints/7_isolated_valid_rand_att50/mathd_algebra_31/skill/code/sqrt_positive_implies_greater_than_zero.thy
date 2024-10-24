lemma sqrt_positive_implies_greater_than_zero:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  from assms have "a > 0" by simp
  then show "sqrt a > 0" by auto
qed