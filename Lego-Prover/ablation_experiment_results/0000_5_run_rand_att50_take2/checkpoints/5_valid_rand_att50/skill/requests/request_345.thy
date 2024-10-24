lemma units_digit_power:
  fixes a :: nat
  assumes "a > 0"
  shows "units_digit(a^n) = units_digit(a^(n mod 4))"