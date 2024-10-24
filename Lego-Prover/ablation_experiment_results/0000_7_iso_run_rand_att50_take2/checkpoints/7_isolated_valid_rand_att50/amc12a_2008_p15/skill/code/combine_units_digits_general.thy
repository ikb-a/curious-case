lemma combine_units_digits_general:
  fixes x y d :: nat
  assumes "d > 0"
  shows "((x mod d) + (y mod d)) mod d = (x + y) mod d"
proof -
  have "((x + y) mod d) = ((x mod d) + (y mod d)) mod d"
  proof -
    have "x = (x div d) * d + (x mod d)" by (metis div_mult_mod_eq)
    moreover have "y = (y div d) * d + (y mod d)" by (metis div_mult_mod_eq)
    ultimately have "x + y = ((x div d) + (y div d)) * d + ((x mod d) + (y mod d))"
      by (auto simp: field_simps)
    then show ?thesis 
      using mod_add_eq by metis
  qed
  then show ?thesis by simp
qed