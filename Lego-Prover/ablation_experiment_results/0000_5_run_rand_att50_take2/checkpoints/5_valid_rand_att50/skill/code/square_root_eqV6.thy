lemma square_root_eq:
  fixes x y :: real
  assumes "y >= 0" "x = y^2"
  shows "sqrt x = y"
proof -
  have "sqrt x = sqrt (y^2)" using assms(2) by auto
  then have "sqrt x = abs y" by auto
  moreover have "abs y = y" using assms(1) by (metis abs_of_nonneg)
  ultimately show ?thesis by auto
qed