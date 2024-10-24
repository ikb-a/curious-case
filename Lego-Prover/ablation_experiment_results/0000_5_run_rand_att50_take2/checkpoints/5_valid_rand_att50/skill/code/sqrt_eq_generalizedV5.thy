lemma sqrt_eq_generalized:
  fixes x :: real
  assumes "sqrt (x + c) = d" "c > 0" "d > 0"
  shows "x = d^2 - c"
proof -
  have "x + c = d^2" using assms(1) by (smt (verit) assms(3) less_eq_real_def real_sqrt_le_iff real_sqrt_pow2_iff real_sqrt_zero)
  then show "x = d^2 - c" by simp
qed