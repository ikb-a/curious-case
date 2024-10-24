lemma units_digit_power:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "units_digit (a^n) = (a mod 10) ^ (n mod 4) mod 10"