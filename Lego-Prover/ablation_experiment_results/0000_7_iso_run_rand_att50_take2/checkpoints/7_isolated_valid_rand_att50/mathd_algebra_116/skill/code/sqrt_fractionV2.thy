lemma sqrt_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) = sqrt(a) / sqrt(b) * sqrt(b) / sqrt(b)"
    by (metis assms divide_self less_numeral_extra(3) mult.commute mult_cancel_right1 real_sqrt_divide real_sqrt_mult times_divide_eq_left)
  also have "... = sqrt(a) * (1 / sqrt(b))"
    by (simp add: field_simps)
  also have "... = sqrt(a) * (sqrt(b) / (sqrt(b) * sqrt(b)))"
    by (smt (verit) assms mult_cancel_left nless_le nonzero_divide_mult_cancel_left real_sqrt_eq_zero_cancel)
  finally show ?thesis
    by (metis real_sqrt_divide)
qed