lemma sum_of_squares_non_negativity:
  fixes a b :: real
  shows "0 <= a^2 + b^2"
proof -
  have "a^2 >= 0" using non_negative_squares_for_any_c(1) by simp
  have "b^2 >= 0" using non_negative_squares_for_any_c(2) by simp
  thus ?thesis by (simp add: add_nonneg_nonneg)
qed