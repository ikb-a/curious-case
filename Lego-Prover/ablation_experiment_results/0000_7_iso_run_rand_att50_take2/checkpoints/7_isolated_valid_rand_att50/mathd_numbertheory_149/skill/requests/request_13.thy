lemma simplify_congruence:
  fixes k :: nat
  assumes "2k + 5 \<equiv> 3 mod 6"
  shows "k \<equiv> 2 mod 3"