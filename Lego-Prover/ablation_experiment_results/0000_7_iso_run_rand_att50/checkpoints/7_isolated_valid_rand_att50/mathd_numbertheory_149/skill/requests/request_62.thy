lemma k_congruence:
  fixes k :: nat
  assumes "2k \<equiv> 4 (mod 6)"
  shows "k \<equiv> 2 (mod 3)"