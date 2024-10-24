lemma units_digit_of_power:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "units_digit(a^n) = units_digit(a^(n mod cycle_length))"