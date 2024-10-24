lemma combine_fractions:
  fixes a b c d :: real
  assumes "c > 0" "d > 0"
  shows "(a / c) + (b / d) = (a * d + b * c) / (c * d)"
proof -
  have "a / c + b / d = a / c + b * (1 / d)"
    by simp
  then have "a / c + b * (1 / d) = a / c + (b * c) / (c * d)"
    by (smt (verit) add_left_imp_eq assms(1) nless_le nonzero_mult_divide_mult_cancel_right2)
  then have "a / c + (b * c) / (c * d) = (a * d) / (c * d) + (b * c) / (c * d)"
    by (metis assms(2) divide_self less_numeral_extra(3) mult.commute mult_cancel_right2 times_divide_times_eq)
  then have "(a * d) / (c * d) + (b * c) / (c * d) = (a * d + b * c) / (c * d)"
    by (metis add_divide_distrib)
  thus ?thesis
    by (metis add_frac_eq assms(1) assms(2) less_numeral_extra(3))
qed