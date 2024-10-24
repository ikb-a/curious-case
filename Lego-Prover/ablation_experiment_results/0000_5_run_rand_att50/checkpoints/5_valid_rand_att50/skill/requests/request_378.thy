lemma units_digit_power_of_two:
  shows "((2 ^ n) mod 10) = (case n mod 4 of 0 => 6 | 1 => 2 | 2 => 4 | 3 => 8)"