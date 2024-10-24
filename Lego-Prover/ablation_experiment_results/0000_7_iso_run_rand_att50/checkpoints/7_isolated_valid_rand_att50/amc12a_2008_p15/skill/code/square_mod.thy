lemma square_mod:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 10 = 0"
proof -
  have "k = 10 * (k div 10)" using assms by auto
  then have "k^2 = (10 * (k div 10))^2" by simp
  also have "... = 100 * (k div 10)^2" by simp
  finally have "k^2 mod 10 = (100 * (k div 10)^2) mod 10" by simp
  also have "... = 0" by auto
  thus ?thesis by (metis assms mod_mult_cong mod_mult_self2_is_0 mod_self power2_eq_square)
qed