lemma sqrt_limit_extended:
  fixes x :: real and n :: nat
  assumes "n > 0" "n = 9"
  shows "n = sqrt(x + n) \<Longrightarrow> x = (n^2 - n)"
proof -
  assume "n = sqrt(x + n)"
  hence "n^2 = x + n" by (smt (verit) assms(1) less_or_eq_imp_le of_nat_0 of_nat_le_iff of_nat_power_eq_of_nat_cancel_iff real_sqrt_ge_0_iff real_sqrt_pow2_iff)
  then show "x = (n^2 - n)" by (smt (verit) assms(2) le_add_diff_inverse le_square of_nat_add of_nat_mult power2_eq_square)
qed