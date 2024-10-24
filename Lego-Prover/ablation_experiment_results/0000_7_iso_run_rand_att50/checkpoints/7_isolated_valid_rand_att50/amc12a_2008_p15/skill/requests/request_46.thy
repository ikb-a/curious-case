lemma units_digit_modulo:
  fixes a :: nat
  assumes "a mod 10 = b"
  shows "a^2 mod 10 = (b^2 mod 10)"