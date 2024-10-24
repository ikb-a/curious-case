theorem amc12b_simple:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 3 - f 1 = 6"
  shows "f 5 - f 1 = 12"
proof -
  have "f 3 - f 1 = (a * 3 + b) - (a * 1 + b)"
    using assms(1) by auto
  then have "f 3 - f 1 = 2 * a" by simp
  have "2 * a = 6" using assms(2) by (metis \<open>f 3 - f 1 = 2 * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "f 5 - f 1 = (a * 5 + b) - (a * 1 + b)"
    using assms(1) by auto
  then have "f 5 - f 1 = 4 * a" by simp
  have "4 * a = 4 * 3" using `a = 3` by simp
  thus "f 5 - f 1 = 12" by (smt (verit) \<open>f 5 - f 1 = 4 * a\<close>)
qed