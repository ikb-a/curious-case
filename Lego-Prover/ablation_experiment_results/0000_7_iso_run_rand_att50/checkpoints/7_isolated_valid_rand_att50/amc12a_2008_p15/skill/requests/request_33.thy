lemma units_digit_modulo:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "(k^2 + 2^k) mod 10 = 6"