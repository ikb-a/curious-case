lemma units_digit_power:
  fixes a :: nat and n :: nat
  assumes "n > 0"
  shows "((a^n) mod 10) = (a mod 10) ^ (n mod 4)"