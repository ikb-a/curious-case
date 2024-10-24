lemma inequality_from_division_extended:
  fixes a b c d :: real
  assumes "c > 0" "d > 0" "a / c < b / d"
  shows "a * d < b * c"
proof -
  have "a / c < b / d" using assms(2) by (metis assms(3))
  then have "a * d < b * (c / d * d)" using assms(1) by (metis assms(2) divide_less_eq mult.commute mult.left_commute mult_less_cancel_left_pos times_divide_eq_left times_divide_eq_right)
  thus ?thesis using assms(1) by (metis assms(2) assms(3) mult.commute pos_divide_less_eq pos_less_divide_eq times_divide_eq_left)
qed