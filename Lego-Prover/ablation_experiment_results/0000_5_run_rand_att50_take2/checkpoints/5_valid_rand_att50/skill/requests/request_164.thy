lemma power_modulo_cycle:
  fixes b :: nat
  shows "b^n mod 10 = (cycle_of_units_digit b) ! (n mod length (cycle_of_units_digit b))"