lemma square_root_eq:
  fixes x y :: real
  assumes "y >= 0" "x = y^2"
  shows "sqrt x = y"
proof -
  from assms(2) have "x = y^2" by simp
  then have "sqrt x = sqrt (y^2)" by simp
  also have "... = abs y" by auto
  finally show ?thesis using assms(1) by (simp add: abs_of_nonneg)
qed