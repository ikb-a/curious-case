lemma non_negative_sum_of_squares:
  fixes x y :: real
  shows "0 \<le> x^2 + y^2"
proof -
  have "x^2 >= 0" using non_negative_power_general[of x] by simp
  have "y^2 >= 0" using non_negative_power_general[of y] by simp
  then show ?thesis by (simp add: add_nonneg_nonneg)
qed