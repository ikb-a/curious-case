lemma simplify_congruence:
  fixes k :: nat
  assumes "N = 8*k + 5"
  shows "8*k + 5 \<equiv> 3 (mod 6)"