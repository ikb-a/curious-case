lemma combine_units_digits_base:
  fixes x y :: nat and b :: nat
  assumes "b > 1"
  shows "((x mod b) + (y mod b)) mod b = (x + y) mod b"
proof -
  have "((x + y) mod b) = ((x mod b) + (y mod b)) mod b"
  proof -
    have "x = (x div b) * b + (x mod b)" by (metis div_mult_mod_eq)
    moreover have "y = (y div b) * b + (y mod b)" by (metis div_mult_mod_eq)
    ultimately have "x + y = ((x div b) + (y div b)) * b + ((x mod b) + (y mod b))" 
      by (auto simp: field_simps)
    then show ?thesis 
      using mod_add_eq by metis
  qed
  then show ?thesis by simp
qed