lemma combine_terms:
  fixes a b denom1 denom2 :: real
  assumes "denom1 > 0" "denom2 > 0"
  shows "a / denom1 + b / denom2 = (a * denom2 + b * denom1) / (denom1 * denom2)"
proof -
  have "a / denom1 + b / denom2 = (a * denom2) / (denom1 * denom2) + (b * denom1) / (denom1 * denom2)"
    by (smt (verit) assms(1) assms(2) linorder_neq_iff nonzero_mult_divide_mult_cancel_right nonzero_mult_divide_mult_cancel_right2)
  also have "... = (a * denom2 + b * denom1) / (denom1 * denom2)"
    by (simp add: field_simps)
  finally show ?thesis .
qed