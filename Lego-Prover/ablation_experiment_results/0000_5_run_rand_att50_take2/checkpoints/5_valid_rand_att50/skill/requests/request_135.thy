lemma power_of_2_mod:
  fixes n :: nat
  assumes "n > 0"
  shows "2^n mod 10 = (2^(n mod 4) mod 10)"