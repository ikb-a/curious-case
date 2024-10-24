lemma mod_conditions:
  fixes N :: nat
  assumes "N < 50" "N mod 8 = 5" "N mod 6 = 3"
  shows "N = 21 \<or> N = 45"