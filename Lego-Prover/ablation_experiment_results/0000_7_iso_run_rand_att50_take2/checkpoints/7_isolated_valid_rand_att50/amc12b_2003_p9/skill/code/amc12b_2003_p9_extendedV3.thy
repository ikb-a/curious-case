theorem amc12b_2003_p9_extended:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f x - f 2 = (x - 2) * a"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)"
    using assms(1) by auto
  then have "f 6 - f 2 = 4 * a" by simp
  have "4 * a = 12" using assms(2) by (metis \<open>f 6 - f 2 = 4 * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "f x - f 2 = (a * x + b) - (a * 2 + b)"
    using assms(1) by auto
  then have "f x - f 2 = (a * x - a * 2)" by simp
  then have "f x - f 2 = (x - 2) * a" by (simp add: algebra_simps)
  thus ?thesis using `a = 3` by simp
qed