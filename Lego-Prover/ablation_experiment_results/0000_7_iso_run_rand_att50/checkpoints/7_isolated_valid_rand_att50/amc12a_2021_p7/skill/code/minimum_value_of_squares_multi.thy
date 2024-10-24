lemma minimum_value_of_squares_multi:
  fixes x :: "real list"
  assumes "length x = n" and "n > 0"
  shows "(\<Sum>i\<in>{0..n-1}. (x ! i)^2) + (\<Sum>i\<in>{0..n-1}. (x ! i))^2 >= 0"
proof -
  have "(\<Sum>i\<in>{0..n-1}. (x ! i)^2) >= 0" 
    by (simp add: sum_nonneg)
  moreover have "(\<Sum>i\<in>{0..n-1}. (x ! i))^2 >= 0" 
    by (simp add: power2_eq_square)
  ultimately show ?thesis 
    by (simp add: add_nonneg_nonneg)
qed