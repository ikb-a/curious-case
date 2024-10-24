lemma square_mod_10:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 10 = 0"