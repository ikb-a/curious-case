lemma sum_of_squares_non_negative_general:
  fixes xs :: "real list"
  shows "(\<Sum>x\<in>set xs. x^2) >= 0"
proof -
  have "x^2 >= 0" for x :: real by (simp add: power2_eq_square)
  then show ?thesis by (simp add: sum_nonneg)
qed