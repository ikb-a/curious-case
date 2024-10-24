lemma sqrt_limit_general:
  fixes x :: real
  assumes "n > 0" "k > 0" "k = sqrt(x + k)"
  shows "x = k^2 - k"
proof -
  have "k^2 = x + k" using assms(3) by (smt (verit) assms(2) less_eq_real_def real_sqrt_le_iff real_sqrt_pow2_iff real_sqrt_zero)
  then show ?thesis by auto
qed