lemma non_negative_sum:
  fixes x y z :: real
  assumes "x >= 0" "y >= 0" "z >= 0"
  shows "x + y + z >= 0"
proof -
  have "x + y + z = (x + y) + z" by auto
  also have "(x + y) >= 0" using assms(1) assms(2) by (simp add: add_nonneg_nonneg)
  then have "(x + y) + z >= 0 + z" by auto
  thus ?thesis by (metis add_nonneg_nonneg assms(1) assms(2) assms(3) group_cancel.add1)
qed