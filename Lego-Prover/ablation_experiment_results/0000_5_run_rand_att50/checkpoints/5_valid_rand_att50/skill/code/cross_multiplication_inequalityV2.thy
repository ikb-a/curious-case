lemma cross_multiplication_inequality:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0" and "a / b = c / d"
  shows "a * d = b * c"
proof -
  have "a / b = c / d" using assms by simp
  then show "a * d = b * c" by (metis assms(1) assms(2) div_by_1 divide_cancel_right frac_eq_eq mult.commute times_divide_eq_left zero_neq_one)
qed