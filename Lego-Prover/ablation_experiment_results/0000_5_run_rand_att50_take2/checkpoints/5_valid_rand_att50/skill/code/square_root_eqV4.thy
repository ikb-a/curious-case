lemma square_root_eq:
  fixes x y :: real
  assumes "y >= 0" "x = y^2"
  shows "sqrt x = y"
proof -
  from assms(2) have "x = y^2" by simp
  then have "sqrt x = sqrt (y^2)" by simp
  have "sqrt (y^2) = abs y" by auto
  with assms(1) have "abs y = y" by (metis \<open>y >= 0\<close> abs_of_nonneg)
  thus ?thesis by (simp add: \<open>sqrt x = sqrt (y^2)\<close>)
qed