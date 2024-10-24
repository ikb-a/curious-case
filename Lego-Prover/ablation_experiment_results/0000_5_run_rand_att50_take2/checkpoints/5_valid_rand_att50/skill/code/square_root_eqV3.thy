lemma square_root_eq:
  fixes x y :: real
  assumes "y >= 0" "x = y^2"
  shows "sqrt x = y"
proof -
  have "x = y^2" using assms(2) by simp
  then have "sqrt x = sqrt (y^2)" by simp
  then have "sqrt x = abs y" by auto
  then show ?thesis using assms(1) by (simp add: abs_if)
qed