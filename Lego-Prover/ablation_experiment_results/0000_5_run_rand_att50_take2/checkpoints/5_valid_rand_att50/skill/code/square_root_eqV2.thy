lemma square_root_eq:
  fixes x y :: real
  assumes "y >= 0" "x = y^2"
  shows "sqrt x = y"
proof -
  have "x >= 0" using assms(2) assms(1) by auto
  have "sqrt x ^ 2 = x" using `x >= 0` by auto
  from assms(2) have "sqrt x ^ 2 = (y^2)" by simp
  then show ?thesis using `sqrt x ^ 2 = x` by (simp add: assms(1))
qed