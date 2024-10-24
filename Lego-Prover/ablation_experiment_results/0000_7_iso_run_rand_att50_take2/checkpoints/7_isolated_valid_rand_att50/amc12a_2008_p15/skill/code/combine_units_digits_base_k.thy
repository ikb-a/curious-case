lemma combine_units_digits_base_k:
  fixes x y :: nat and k :: nat
  assumes "k > 1"
  shows "((x mod k) + (y mod k)) mod k = (x + y) mod k"
using combine_units_digits_general[of x y k] assms by presburger