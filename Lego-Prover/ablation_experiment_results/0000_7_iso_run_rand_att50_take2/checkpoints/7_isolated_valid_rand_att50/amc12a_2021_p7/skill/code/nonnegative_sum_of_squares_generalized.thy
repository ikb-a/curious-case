lemma nonnegative_sum_of_squares_generalized:
  fixes xs :: "real list"
  shows "(\<Sum>x\<in>set xs. x^2) >= 0"
proof -
  have "x^2 >= 0" for x :: real by simp
  then show ?thesis by (simp add: sum_nonneg)
qed