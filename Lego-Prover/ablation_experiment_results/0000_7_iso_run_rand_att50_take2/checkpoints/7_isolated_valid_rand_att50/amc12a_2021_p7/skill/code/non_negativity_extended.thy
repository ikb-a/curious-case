lemma non_negativity_extended:
  fixes x y z :: real
  shows "x^2 + y^2 + z^2 >= 0"
proof -
  have "x^2 >= 0" and "y^2 >= 0" and "z^2 >= 0" 
    by (auto simp: non_negative_squares_generalized)
  thus "x^2 + y^2 + z^2 >= 0" 
    by (simp add: add_nonneg_nonneg)
qed