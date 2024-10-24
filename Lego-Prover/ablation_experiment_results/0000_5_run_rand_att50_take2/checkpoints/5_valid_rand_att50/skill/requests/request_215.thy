lemma mod_10_calculation:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "(k mod 10) = 0"