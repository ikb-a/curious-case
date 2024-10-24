lemma sqrt_limit_general:
  fixes x :: real
  assumes "c = sqrt(x + a)" "a > 0" "c > 0"
  shows "x = c^2 - a"
proof -
  have "c^2 = x + a" using assms(1) by (smt (verit) assms(3) less_eq_real_def real_sqrt_le_iff real_sqrt_pow2_iff real_sqrt_zero)
  thus ?thesis by simp
qed