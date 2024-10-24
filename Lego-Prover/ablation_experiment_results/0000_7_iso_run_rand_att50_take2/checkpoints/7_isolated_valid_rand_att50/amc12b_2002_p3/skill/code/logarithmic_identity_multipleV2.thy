lemma logarithmic_identity_multiple:
  fixes a :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0" and "log a b = x" and "log a c = y"
  shows "b * c = a ^ (x + y)"
proof -
  have "x = log a b" by (simp add: assms(5))
  have "y = log a c" by (simp add: assms(6))
  then show ?thesis using assms(1) by (smt (verit) assms(2) assms(3) assms(4) assms(5) assms(6) power_add powr_log_cancel powr_realpow)
qed