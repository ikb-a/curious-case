theorem linear_function_difference:
  fixes a :: "real" and b :: "real" and f :: "real list \<Rightarrow> real"
  assumes "\<forall> x. f x = a * (x ! 0) + b * (x ! 1)"
    and "f [6, 2] - f [2, 2] = 12"
  shows "f [12, 2] - f [2, 2] = 30"
proof -
  have "f [6, 2] - f [2, 2] = (a * 6 + b * 2) - (a * 2 + b * 2)"
    using assms(1) by simp
  then have "f [6, 2] - f [2, 2] = (a * 6 + b * 2) - (a * 2 + b * 2)"
    by simp
  then have "f [6, 2] - f [2, 2] = a * 6 - a * 2"
    by (simp add: algebra_simps)
  then have "f [6, 2] - f [2, 2] = a * (6 - 2)"
    by (simp add: algebra_simps)
  then have "f [6, 2] - f [2, 2] = 4 * a" using assms(2) by simp
  then have "4 * a = 12" by (metis assms(2) dbl_simps(3))
  then have "a = 12 / 4" by (simp add: field_simps)
  then have "a = 3" by simp
  have "f [12, 2] - f [2, 2] = (a * 12 + b * 2) - (a * 2 + b * 2)"
    using assms(1) by simp
  then have "f [12, 2] - f [2, 2] = a * 12 - a * 2"
    by simp
  then have "f [12, 2] - f [2, 2] = a * (12 - 2)"
    by (simp add: algebra_simps)
  then have "f [12, 2] - f [2, 2] = a * 10" by simp
  then have "f [12, 2] - f [2, 2] = 3 * 10" using `a = 3` by simp
  then show ?thesis by simp
qed