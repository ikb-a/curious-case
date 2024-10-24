theorem amc12b_2003_p9:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and " f 6 - f 2 = 12"
  shows "f 12 - f 2 = 30"
proof -
  have "f 6 - f 2 = a * (6 - 2)" using linear_function_difference assms by simp
  then have "4 * a = 12" using assms(2) by auto
  then have "a = 3" by (simp add: divide_simps)
  have "f 12 - f 2 = a * (12 - 2)" using linear_function_difference assms by simp
  then have "f 12 - f 2 = 10 * a" by simp
  have "10 * a = 10 * 3" using `a = 3` by simp
  thus "f 12 - f 2 = 30" by (smt (verit) \<open>f 12 - f 2 = 10 * a\<close>)
qed