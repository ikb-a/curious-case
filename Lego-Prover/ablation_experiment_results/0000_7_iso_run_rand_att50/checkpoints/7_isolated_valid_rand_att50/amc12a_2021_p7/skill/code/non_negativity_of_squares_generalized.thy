lemma non_negativity_of_squares_generalized:
  fixes x :: real
  shows "x^2 >= 0"
proof -
  show "?thesis" by (simp add: power2_eq_square)
qed