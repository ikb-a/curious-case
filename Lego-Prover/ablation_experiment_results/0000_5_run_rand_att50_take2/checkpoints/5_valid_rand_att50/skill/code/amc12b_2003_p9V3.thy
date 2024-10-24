theorem amc12b_2003_p9:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 30"
proof -
  have "f 6 - f 2 = (6 - 2) * a" using linear_function_difference[OF assms(1)] by simp
  then have "4 * a = 12" using `f 6 - f 2 = 12` by simp
  then have "a = 3" by (simp add: field_simps)
  then have "f 12 - f 2 = (12 - 2) * a" using linear_function_difference[OF assms(1)] by simp
  then show ?thesis by (simp add: `a = 3`)
qed