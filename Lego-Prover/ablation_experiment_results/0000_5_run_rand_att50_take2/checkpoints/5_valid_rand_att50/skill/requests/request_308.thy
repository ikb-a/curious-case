lemma units_digit_power:
  fixes n :: nat
  shows "n mod 10 = (2^n mod 10)"
  using nat_mod_10_cycle[of 2] by auto