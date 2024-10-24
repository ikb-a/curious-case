lemma units_digit_power:
  fixes a :: nat
  assumes "a > 0"
  shows "((a mod 10) ^ n) mod 10 = (a ^ n) mod 10"