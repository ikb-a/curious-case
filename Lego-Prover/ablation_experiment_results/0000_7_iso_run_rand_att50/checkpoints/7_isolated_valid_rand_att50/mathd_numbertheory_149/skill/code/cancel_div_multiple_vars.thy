lemma cancel_div_multiple_vars:
  fixes x :: real
  assumes "x > 0" "A + B / x = C + D / x"
  shows "A * x + B = C * x + D"
proof -
  have "x * (A + B / x) = x * (C + D / x)"
    using assms(2) by auto
  then have "x * A + B = C * x + D"
    by (metis add.commute assms(1) assms(2) cancel_div_high_dim mult.commute)
  then show ?thesis using assms(1) by (simp add: mult.commute)
qed