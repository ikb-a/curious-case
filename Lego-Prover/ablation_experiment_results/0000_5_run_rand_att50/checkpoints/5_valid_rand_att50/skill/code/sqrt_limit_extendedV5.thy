lemma sqrt_limit_extended:
  fixes x :: real and n :: nat
  assumes "n > 0" and "n = sqrt(x + n)"
  shows "x = n^2 - n"
proof -
  have "n^2 = x + n" using assms(2) by (smt (verit) assms(1) nat_less_le of_nat_0 of_nat_mono of_nat_power_eq_of_nat_cancel_iff real_sqrt_ge_0_iff real_sqrt_pow2_iff)
  have "x = n^2 - n" by (smt (verit) \<open>real (n\<^sup>2) = x + real n\<close> le_add_diff_inverse of_nat_add of_nat_le_iff of_nat_mult power2_eq_square power2_nat_le_eq_le power2_nat_le_imp_le)
  thus ?thesis by simp
qed