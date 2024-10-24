lemma sum_of_squares_non_negative:
  fixes xs :: "nat list"
  shows "(\<Sum>x\<in>set xs. (real_of_nat x)^2) >= 0"
proof -
  have "real_of_nat x^2 >= 0" for x :: nat by (simp add: power2_eq_square)
  then show ?thesis by (simp add: sum_nonneg)
qed