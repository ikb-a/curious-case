lemma sum_of_squares_non_negative:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" and "b^2 >= 0" by (simp_all add: non_negative_squares)
  then show ?thesis by (simp add: add_nonneg_nonneg)
qed