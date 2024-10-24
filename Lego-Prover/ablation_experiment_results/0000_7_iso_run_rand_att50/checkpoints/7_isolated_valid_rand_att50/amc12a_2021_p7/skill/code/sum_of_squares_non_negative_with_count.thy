lemma sum_of_squares_non_negative_with_count:
  fixes xs :: "real list"
  assumes "length xs > 0" 
  shows "(\<Sum>x\<in>set xs. x^2) >= 0"
proof -
  have "x^2 >= 0" for x :: real by (simp add: power2_eq_square)
  then show ?thesis 
    using assms by (simp add: sum_nonneg) 
qed