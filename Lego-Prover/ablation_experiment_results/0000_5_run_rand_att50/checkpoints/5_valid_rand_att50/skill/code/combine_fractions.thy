lemma combine_fractions:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a/b) - (c/d) = (a * d - b * c) / (b * d)"
proof -
  have "a / b - c / d = (a * d) / (b * d) - (c * b) / (b * d)"
    by (smt (verit) assms(1) assms(2) frac_eq_eq mult.assoc mult.commute no_zero_divisors nonzero_mult_divide_mult_cancel_left2)
  also have "... = (a * d - c * b) / (b * d)"
    by (simp add: field_simps)
  finally show ?thesis by simp
qed