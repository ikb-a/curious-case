lemma combine_units_digits:
  fixes x y :: nat
  shows "((x mod 10) + (y mod 10)) mod 10 = (x + y) mod 10"
proof -
  have "((x + y) mod 10) = ((x mod 10) + (y mod 10)) mod 10"
  proof -
    have "x = (x div 10) * 10 + (x mod 10)" by (metis div_mult_mod_eq)
    moreover have "y = (y div 10) * 10 + (y mod 10)" by (metis div_mult_mod_eq)
    ultimately have "x + y = ((x div 10) + (y div 10)) * 10 + ((x mod 10) + (y mod 10))" 
      by auto
    then show ?thesis 
      using mod_add_eq by metis
  qed
  then show ?thesis by simp
qed