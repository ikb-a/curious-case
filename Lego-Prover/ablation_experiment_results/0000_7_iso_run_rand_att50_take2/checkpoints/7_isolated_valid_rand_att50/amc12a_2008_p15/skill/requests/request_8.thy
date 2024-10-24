lemma units_digit_power:
  fixes a :: nat
  assumes "a > 0"
  shows "((a^n) mod 10) = (units_digit_of_power a n)"