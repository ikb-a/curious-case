lemma combine_units_digits:
  fixes x y :: nat
  shows "((x mod 10) + (y mod 10)) mod 10 = (x + y) mod 10"