lemma congruence_mod_8:
  fixes N :: nat
  assumes "N mod 8 = 5"
  shows "N = 8k + 5" for some integer k