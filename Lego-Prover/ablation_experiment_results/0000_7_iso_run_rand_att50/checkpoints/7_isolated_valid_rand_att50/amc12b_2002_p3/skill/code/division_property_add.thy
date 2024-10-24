lemma division_property_add:
  fixes a b c d :: real
  assumes "b > 0" "d > 0"
  shows "(a / b) + (c / d) = (a * d + c * b) / (b * d)"
proof -
  have "a / b + c / d = (a * d) / (b * d) + (c * b) / (b * d)"
    by (smt (verit) assms(1) assms(2) linorder_neq_iff nonzero_mult_divide_mult_cancel_right nonzero_mult_divide_mult_cancel_right2)
  then show ?thesis by (smt (verit) add_divide_distrib)
qed