lemma fraction_combination:
  fixes a b c d :: real
  assumes "d \<noteq> 0" "b \<noteq> 0"
  shows "(a / b) - (c / d) = (a * d - b * c) / (b * d)"
proof -
  have "a / b - c / d = (a * d) / (b * d) - (c * b) / (b * d)"
    by (smt (verit) assms(1) assms(2) frac_eq_eq mult.assoc mult.commute no_zero_divisors nonzero_mult_divide_mult_cancel_left2)
  then have "a / b - c / d = (a * d - c * b) / (b * d)"
    by (smt (verit) assms(1) assms(2) diff_frac_eq)
  thus ?thesis by simp
qed