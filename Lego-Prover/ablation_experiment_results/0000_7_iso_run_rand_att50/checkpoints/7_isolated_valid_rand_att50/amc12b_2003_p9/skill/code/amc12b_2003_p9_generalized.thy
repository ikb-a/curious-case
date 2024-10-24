theorem amc12b_2003_p9_generalized:
  fixes a b c :: real
  defines "f \<equiv> (\<lambda>x. a * x + b)"
  assumes "f 6 - f 2 = c"
  shows "f 12 - f 2 = (c / 4) * 10"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)"
    using `f \<equiv> (\<lambda>x. a * x + b)` by simp
  then have "f 6 - f 2 = a * (6 - 2)" by (simp add: algebra_simps)
  then have "4 * a = c" using assms by simp
  then have "a = c / 4" by (simp add: field_simps)
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)"
    using `f \<equiv> (\<lambda>x. a * x + b)` by simp
  then have "f 12 - f 2 = a * (12 - 2)" by (simp add: algebra_simps)
  then have "f 12 - f 2 = 10 * a" by simp
  then show ?thesis using `a = c / 4` by simp
qed