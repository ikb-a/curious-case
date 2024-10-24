theorem amc12b_2003_p9:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 30"
proof -
  have "f 6 - f 2 = a * (6 - 2)" using linear_function_difference assms by simp
  then have "4 * a = 12" using assms(2) by simp
  then have "a = 12 / 4" by (simp add: field_simps)
  then have "a = 3" by simp
  have "f 12 - f 2 = a * (12 - 2)" using linear_function_difference assms by simp
  then have "f 12 - f 2 = a * 10" by simp
  then have "f 12 - f 2 = 3 * 10" using `a = 3` by simp
  then show ?thesis by simp
qed