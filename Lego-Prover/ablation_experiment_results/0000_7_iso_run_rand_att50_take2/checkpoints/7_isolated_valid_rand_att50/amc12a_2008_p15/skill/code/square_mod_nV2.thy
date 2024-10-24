lemma square_mod_n:
  fixes k n :: nat
  assumes "k mod n = 0"
  shows "k^2 mod n = 0"
proof -
  obtain x where "k = n * x" using assms by auto
  then have "k^2 = (n * x)^2" by simp
  also have "... = n^2 * x^2" by (simp add: power2_eq_square)
  finally have "k^2 mod n = (n^2 * x^2) mod n" by simp
  also have "... = 0" by auto
  thus ?thesis by (metis assms mod_mult_cong mod_mult_self2_is_0 mod_self power2_eq_square)
qed