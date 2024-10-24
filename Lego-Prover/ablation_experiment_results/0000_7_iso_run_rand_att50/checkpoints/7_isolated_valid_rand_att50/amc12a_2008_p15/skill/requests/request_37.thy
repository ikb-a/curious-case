lemma k_mod_10:
  shows "((2008^2 + 2^2008) mod 10) = 0"
  using power_mod_cycle[of 2 2008] by auto