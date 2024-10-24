lemma periodic_units_digit_2:
  shows "((2^n) mod 10) = (case n mod 4 of 0 => 6 | 1 => 2 | 2 => 4 | 3 => 8)"