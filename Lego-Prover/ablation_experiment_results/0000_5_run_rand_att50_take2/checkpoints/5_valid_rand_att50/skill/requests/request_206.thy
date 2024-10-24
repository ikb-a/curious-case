lemma units_digit_power:
  fixes x :: nat and n :: nat
  assumes "n > 0"
  shows "x^n mod 10 = (x mod 10)^n mod 10"