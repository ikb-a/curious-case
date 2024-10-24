lemma sqrt_eq_generalized:
  fixes x b :: real
  assumes "sqrt (x + b) = b" "b > 0"
  shows "x = b^2 - b"
proof -
  have "x + b = b^2" using assms(1) by (smt (verit) assms(2) less_eq_real_def real_sqrt_le_iff real_sqrt_pow2_iff real_sqrt_zero)
  then have "x = b^2 - b" by simp
  thus ?thesis .
qed