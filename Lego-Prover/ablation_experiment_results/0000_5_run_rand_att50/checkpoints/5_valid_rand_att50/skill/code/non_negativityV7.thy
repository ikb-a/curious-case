lemma non_negativity:
  fixes a b :: real
  shows "a^2 >= 0" "b^2 >= 0" "a^2 + b^2 >= 0"
proof -
  have a_square_non_neg: "a^2 >= 0" 
    by (simp add: mult_nonneg_nonneg) 
  have b_square_non_neg: "b^2 >= 0" 
    by (simp add: mult_nonneg_nonneg)
  have sum_of_squares_non_neg: "a^2 + b^2 >= 0"
    by (simp add: a_square_non_neg b_square_non_neg)
  show "a^2 >= 0" using a_square_non_neg by simp
  show "b^2 >= 0" using b_square_non_neg by simp
  show "a^2 + b^2 >= 0" using sum_of_squares_non_neg by simp
qed