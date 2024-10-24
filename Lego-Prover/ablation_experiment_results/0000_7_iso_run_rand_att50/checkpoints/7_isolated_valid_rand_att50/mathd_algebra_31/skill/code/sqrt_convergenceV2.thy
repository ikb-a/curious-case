lemma sqrt_convergence:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  from assms have "sqrt x = sqrt (max 0 x)" by (simp add: max_def)
  also have "... >= 0" by auto
  finally show ?thesis by simp
qed