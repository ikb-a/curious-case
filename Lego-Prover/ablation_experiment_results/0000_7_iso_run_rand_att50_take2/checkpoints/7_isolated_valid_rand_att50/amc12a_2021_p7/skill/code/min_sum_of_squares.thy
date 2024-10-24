lemma min_sum_of_squares:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" by (simp add: non_negative_squares)
  have "b^2 >= 0" by (simp add: non_negative_squares)
  thus "a^2 + b^2 >= 0" by (simp add: add_nonneg_nonneg)
qed