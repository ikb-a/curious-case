theorem amc12b_2003_p9_general:
  fixes a b c :: real and f :: "real \<Rightarrow> real \<Rightarrow> real"
  assumes "\<forall> x y. f x y = a * x + b * y + c"
    and "f 6 0 - f 2 0 = 12"
  shows "f 12 0 - f 2 0 = 30"
proof -
  have "f 6 0 - f 2 0 = (a * 6 + b * 0 + c) - (a * 2 + b * 0 + c)"
    using assms(1) by auto
  then have "f 6 0 - f 2 0 = 4 * a" by simp
  have "4 * a = 12" using assms(2) by (metis \<open>f 6 0 - f 2 0 = 4 * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "f 12 0 - f 2 0 = (a * 12 + b * 0 + c) - (a * 2 + b * 0 + c)"
    using assms(1) by auto
  then have "f 12 0 - f 2 0 = 10 * a" by simp
  have "10 * a = 10 * 3" using `a = 3` by simp
  thus "f 12 0 - f 2 0 = 30" by (smt (verit) \<open>f 12 0 - f 2 0 = 10 * a\<close>)
qed