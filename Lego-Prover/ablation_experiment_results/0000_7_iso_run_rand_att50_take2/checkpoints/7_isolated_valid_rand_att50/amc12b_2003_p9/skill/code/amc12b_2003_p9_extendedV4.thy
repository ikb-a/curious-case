theorem amc12b_2003_p9_extended:
  fixes a b c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
    and "f 10 - f 4 = 24"
  shows "f 12 - f 2 = 30"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)"
    using assms(1) by auto
  then have "f 6 - f 2 = 4 * a" by simp
  have "4 * a = 12" using assms(2) by (metis \<open>f 6 - f 2 = 4 * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "f 10 - f 4 = (a * 10 + b) - (a * 4 + b)"
    using assms(1) by auto
  then have "f 10 - f 4 = 6 * a" by simp
  have "6 * a = 24" using assms(3) by (metis \<open>f 10 - f 4 = 6 * a\<close> dbl_simps(3))
  then have "a = 4" by (simp add: divide_simps)
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)"
    using assms(1) by auto
  then have "f 12 - f 2 = 10 * a" by simp
  have "10 * a = 10 * 3" using `a = 3` by simp
  thus "f 12 - f 2 = 30" by (smt (verit) \<open>f 12 - f 2 = 10 * a\<close>)
qed