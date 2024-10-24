lemma minimum_value_of_squares:
  fixes x y :: real
  shows "1 = min ((xy - 1)^2 + (x + y)^2) (1)"
  by (metis (no_types, lifting) add_nonneg_nonneg add_nonneg_nonneg)