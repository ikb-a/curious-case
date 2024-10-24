lemma non_negative_minimum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c + 1 >= 1"
proof -
  have "a + b >= 0" using assms(1) assms(2) by (simp add: add_nonneg_nonneg)
  have "c >= 0" using assms(3) by assumption
  have "a + b + c >= 0 + c" using `a + b >= 0` by auto
  have "a + b + c >= c" by (metis add_increasing assms(1) assms(2) dual_order.refl group_cancel.add1)
  have "a + b + c >= 0" using `a + b + c >= 0 + c` by (metis add_nonneg_nonneg assms(1) assms(2) assms(3) group_cancel.add1)
  have "a + b + c + 1 >= 0 + 1" by (metis add.commute add_cancel_right_right add_nonneg_nonneg assms(1) assms(2) assms(3) group_cancel.add1 group_cancel.add2 le_add_same_cancel1)
  thus ?thesis by simp
qed