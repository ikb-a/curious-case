lemma combine_fractions:
  fixes a b c d :: real
  assumes "c > 0" "d > 0"
  shows "(a / c) + (b / d) = (a * d + b * c) / (c * d)"
proof -
  have left_side: "a / c + b / d = (a * d) / (c * d) + (b * c) / (c * d)"
    by (smt (verit) assms(1) assms(2) linorder_neq_iff nonzero_mult_divide_mult_cancel_right nonzero_mult_divide_mult_cancel_right2)
  have "a / c + b / d = (a * d + b * c) / (c * d)"
  proof -
    have "a / c + b / d = (a * d + b * c) / (c * d)"
      by (metis add_cancel_left_right add_frac_eq divide_eq_0_iff left_side mult.commute mult_eq_0_iff times_divide_times_eq)
    thus ?thesis by simp
  qed
  thus ?thesis
    using left_side by simp
qed