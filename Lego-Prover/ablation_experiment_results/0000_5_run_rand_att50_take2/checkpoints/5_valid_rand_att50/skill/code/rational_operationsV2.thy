lemma rational_operations:
  fixes a b c d :: real
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "(a / b) + (c / d) = (a * d + b * c) / (b * d)"
proof -
  have "a / b + c / d = (a * d) / (b * d) + (b * c) / (b * d)"
    by (metis assms(2) assms(4) divide_self dual_order.strict_iff_order mult_cancel_left2 mult_cancel_right1 times_divide_times_eq)
  then have "a / b + c / d = (a * d + b * c) / (b * d)"
    by (smt (verit) add_divide_distrib)
  thus ?thesis
    by simp
qed