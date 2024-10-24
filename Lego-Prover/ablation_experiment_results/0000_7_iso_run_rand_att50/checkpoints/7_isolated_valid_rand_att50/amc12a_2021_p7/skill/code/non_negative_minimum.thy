lemma non_negative_minimum:
  fixes a b c :: real
  assumes "a >= 0" "b >= 0" "c >= 0"
  shows "a + b + c >= 0"
proof -
  have "a + b + c = (a + b) + c" by auto
  also have "(a + b) >= 0" using assms(1) assms(2) by (simp add: add_nonneg_nonneg)
  then have "(a + b) + c >= 0 + c" by auto
  thus ?thesis by (metis add_nonneg_nonneg assms(1) assms(2) assms(3) group_cancel.add1)
qed