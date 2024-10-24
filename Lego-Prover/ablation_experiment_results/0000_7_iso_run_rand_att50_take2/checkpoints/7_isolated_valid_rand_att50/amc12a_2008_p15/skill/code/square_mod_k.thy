lemma square_mod_k:
  fixes k :: nat
  assumes "k mod n = 0" and "n > 0"
  shows "k^2 mod n = 0"
proof -
  obtain x where "k = n * x" using assms(1) by auto
  then have "k^2 = (n * x)^2" by simp
  also have "... = n^2 * x^2" by (simp add: power2_eq_square)
  finally have "k^2 mod n = (n^2 * x^2) mod n" by simp
  also have "... = 0" by auto
  thus ?thesis by (metis assms(1) dvd_imp_mod_0 dvd_mult less_numeral_extra(3) mod_greater_zero_iff_not_dvd power2_eq_square)
qed