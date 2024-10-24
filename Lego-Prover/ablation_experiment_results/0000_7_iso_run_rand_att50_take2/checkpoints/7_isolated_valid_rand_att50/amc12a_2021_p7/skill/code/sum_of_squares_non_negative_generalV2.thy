lemma sum_of_squares_non_negative_general:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" using assms(1) by auto
  have "y^2 >= 0" using assms(2) by auto
  then show "x^2 + y^2 >= 0" using `x^2 >= 0` by (simp add: add_nonneg_nonneg)
qed