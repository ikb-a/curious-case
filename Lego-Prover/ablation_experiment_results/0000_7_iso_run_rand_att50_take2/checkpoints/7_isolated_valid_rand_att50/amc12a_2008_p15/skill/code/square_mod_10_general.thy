lemma square_mod_10_general:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 10 = 0"
  using square_mod_n[of k 10] assms by simp