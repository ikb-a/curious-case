lemma mod_congruence:
  fixes N k :: nat
  assumes "N mod 8 = 5" "N mod 6 = 3"
  shows "N = 8k + 5"