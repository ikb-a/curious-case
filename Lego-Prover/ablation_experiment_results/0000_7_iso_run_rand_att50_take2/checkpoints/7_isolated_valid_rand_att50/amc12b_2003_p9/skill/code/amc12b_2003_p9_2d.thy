theorem amc12b_2003_p9_2d:
  fixes a b :: real and f :: "real \<Rightarrow> real \<Rightarrow> real"
  assumes "\<forall>x y. f x y = a * x + b * y"
    and "f 6 (-2) - f 2 (-2) = 12"
  shows "f 12 (-2) - f 2 (-2) = 30"
proof -
  have "f 6 (-2) - f 2 (-2) = (a * 6 + b * (-2)) - (a * 2 + b * (-2))"
    using assms(1) by auto
  then have "f 6 (-2) - f 2 (-2) = 4 * a" by simp
  have "4 * a = 12" using assms(2) by (metis \<open>f 6 (-2) - f 2 (-2) = 4 * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "f 12 (-2) - f 2 (-2) = (a * 12 + b * (-2)) - (a * 2 + b * (-2))"
    using assms(1) by auto
  then have "f 12 (-2) - f 2 (-2) = 10 * a" by simp
  have "10 * a = 10 * 3" using `a = 3` by simp
  thus "f 12 (-2) - f 2 (-2) = 30" by (smt (verit) \<open>f 12 (-2) - f 2 (-2) = 10 * a\<close>)
qed