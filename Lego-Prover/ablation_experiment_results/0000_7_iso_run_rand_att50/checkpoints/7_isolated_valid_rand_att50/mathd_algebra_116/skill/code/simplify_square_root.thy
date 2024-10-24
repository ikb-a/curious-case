lemma simplify_square_root:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a) / b = sqrt(a / (b^2))"
proof -
  have "sqrt(a) / b = sqrt(a) * (1 / b)" by (simp)
  also have "... = sqrt(a) * sqrt(1 / (b^2))" by (smt (verit) assms less_eq_real_def mult_cancel_left real_sqrt_divide real_sqrt_one real_sqrt_pow2_iff real_sqrt_power)
  also have "... = sqrt(a * (1 / (b^2)))" using assms by (metis real_sqrt_mult)
  also have "... = sqrt(a / (b^2))" by (simp add: field_simps)
  finally show ?thesis by simp
qed