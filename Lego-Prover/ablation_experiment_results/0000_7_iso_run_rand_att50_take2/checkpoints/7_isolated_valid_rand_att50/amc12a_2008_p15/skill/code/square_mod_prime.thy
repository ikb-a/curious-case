lemma square_mod_prime:
  fixes k p :: nat
  assumes "p > 1" "prime p" "k mod p = 0"
  shows "k^2 mod p = 0"
  using square_mod_n[of k p] assms by auto