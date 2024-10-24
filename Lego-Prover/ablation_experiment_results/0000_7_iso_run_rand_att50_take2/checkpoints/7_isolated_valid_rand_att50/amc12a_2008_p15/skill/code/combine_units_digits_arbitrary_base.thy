lemma combine_units_digits_arbitrary_base:
  fixes x y b :: nat
  assumes "b > 1"
  shows "((x mod b) + (y mod b)) mod b = (x + y) mod b"
  using combine_units_digits_n_base[of x y b] assms by presburger