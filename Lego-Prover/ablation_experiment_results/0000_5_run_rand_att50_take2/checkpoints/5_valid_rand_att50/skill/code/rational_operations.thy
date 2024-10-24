lemma rational_operations:
  fixes a b c d :: real
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "(a / b) + (c / d) = (a * d + c * b) / (b * d)"
proof -
  have "a / b + c / d = (a * d) / (b * d) + (c * b) / (b * d)"
    by (smt (verit) assms(2) assms(4) linorder_neq_iff nonzero_mult_divide_mult_cancel_right nonzero_mult_divide_mult_cancel_right2)
  then have "a / b + c / d = (a * d + c * b) / (b * d)"
    by (smt (verit) add_divide_distrib)
  thus ?thesis
    by simp
qed