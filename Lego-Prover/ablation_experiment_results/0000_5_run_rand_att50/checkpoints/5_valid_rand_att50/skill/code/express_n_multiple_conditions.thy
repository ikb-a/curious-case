lemma express_N_multiple_conditions:
  fixes N :: nat and k :: nat
  assumes "N = 8 * k + 5" "N = 6 * m + 3"
  shows "N mod 8 = 5 \<and> N mod 6 = 3"
proof -
  have "N mod 8 = (8 * k + 5) mod 8" using assms(1) by simp
  also have "... = 5" by (simp add: mod_less_divisor)
  moreover have "N mod 6 = (6 * (N div 6) + 3) mod 6" using assms(2) by simp
  ultimately show "N mod 8 = 5 \<and> N mod 6 = 3" by auto
qed