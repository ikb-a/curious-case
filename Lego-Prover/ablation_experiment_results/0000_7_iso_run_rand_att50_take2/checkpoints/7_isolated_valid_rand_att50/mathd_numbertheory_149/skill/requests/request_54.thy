lemma congruence_reduction:
  fixes N k :: nat
  assumes "N \<equiv> 5 (mod 8)"
  shows "N = 8 * k + 5"