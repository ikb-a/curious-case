lemma reciprocal_sum_identity:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0"
  shows "1/x + 1/y = (x + y) / (x * y)"
proof -
  have "1/x + 1/y = (y + x) / (x * y)"
    by (smt (verit) add_divide_distrib assms(1) assms(2) nonzero_divide_mult_cancel_left nonzero_divide_mult_cancel_right)
  thus ?thesis by simp
qed