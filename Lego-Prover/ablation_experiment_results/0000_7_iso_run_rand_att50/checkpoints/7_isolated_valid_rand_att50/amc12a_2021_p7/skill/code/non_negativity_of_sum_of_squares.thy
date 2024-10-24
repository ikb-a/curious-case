lemma non_negativity_of_sum_of_squares:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" by auto
  have "b^2 >= 0" by auto
  then have "a^2 + b^2 >= 0 + 0" by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed