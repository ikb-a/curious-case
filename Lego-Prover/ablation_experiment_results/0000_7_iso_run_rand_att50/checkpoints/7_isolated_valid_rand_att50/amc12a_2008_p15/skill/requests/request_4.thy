lemma square_mod:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 10 = 0"