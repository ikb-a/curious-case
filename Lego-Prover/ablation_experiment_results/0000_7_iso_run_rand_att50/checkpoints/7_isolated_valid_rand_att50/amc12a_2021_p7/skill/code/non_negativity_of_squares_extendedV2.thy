lemma non_negativity_of_squares_extended:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" by auto
  moreover have "b^2 >= 0" by auto
  ultimately show ?thesis by (simp add: add_nonneg_nonneg)
qed