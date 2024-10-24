lemma non_negativity_of_squares:
  fixes z :: real
  shows "z^2 >= 0"
proof -
  have "z^2 = z * z" 
    by (simp add: power2_eq_square)
  then show "z^2 >= 0" 
    using mult_nonneg_nonneg by auto
qed