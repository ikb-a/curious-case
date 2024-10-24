lemma mod_10_of_square:
  fixes n :: nat
  shows "(n^2) mod 10 = (n mod 10)^2 mod 10"

lemma power_mod_10:
  fixes x :: nat
  assumes "x > 0"
  shows "x mod 4 = 0 ⟹ (2^x) mod 10 = 6"