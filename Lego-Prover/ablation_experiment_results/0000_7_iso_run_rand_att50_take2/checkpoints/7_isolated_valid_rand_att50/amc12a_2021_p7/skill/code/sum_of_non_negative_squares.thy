lemma sum_of_non_negative_squares:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" and "b^2 >= 0" by (auto simp: non_negative_squares_generalized)
  thus "a^2 + b^2 >= 0" by (simp add: add_nonneg_nonneg)
qed