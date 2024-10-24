lemma units_digit_power_of_two:
  fixes n :: nat
  assumes "n mod 4 = 0"
  shows "2^n mod 10 = 6"