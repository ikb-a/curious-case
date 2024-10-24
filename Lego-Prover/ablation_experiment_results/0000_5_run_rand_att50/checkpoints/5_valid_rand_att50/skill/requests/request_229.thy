lemma two_power_k_mod_10:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "2^k mod 10 = 6"