theorem amc12b_2003_p9_evolved:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 30"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)" using assms(1) by simp
  then have "f 6 - f 2 = a * (6 - 2)" by (simp add: algebra_simps)
  then have "4 * a = 12" using assms(2) by simp
  then have "a = 3" by (simp add: field_simps)
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)" using assms(1) by simp
  then have "f 12 - f 2 = a * (12 - 2)" by (simp add: algebra_simps)
  then have "f 12 - f 2 = 10 * a" by simp
  then show ?thesis using `a = 3` by simp
qed