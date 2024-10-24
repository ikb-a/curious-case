lemma combine_fractions:
  fixes a b c d :: real
  assumes "c > 0" "d > 0"
  shows "(a / c) + (b / d) = (a * d + b * c) / (c * d)"
proof -
  have "a / c + b / d = (a * d) / (c * d) + (b * c) / (c * d)"
    by (smt (verit) assms(1) assms(2) linorder_neq_iff nonzero_mult_divide_mult_cancel_right nonzero_mult_divide_mult_cancel_right2)
  also have "... = (a * d + b * c) / (c * d)"
    by (auto simp: field_simps)
  finally show ?thesis .
qed