lemma units_digit_of_sum:
  fixes x y :: nat
  shows "(x + y) mod 10 = ((x mod 10) + (y mod 10)) mod 10"