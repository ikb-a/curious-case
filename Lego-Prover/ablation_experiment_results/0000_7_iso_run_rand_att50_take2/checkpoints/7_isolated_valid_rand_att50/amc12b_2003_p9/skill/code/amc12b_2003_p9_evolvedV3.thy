theorem amc12b_2003_p9_evolved:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f (x + 10) - f (x) = 5 * (f (x + 2) - f (x))"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)"
    using assms(1) by auto
  then have "f 6 - f 2 = 4 * a" by simp
  have "4 * a = 12" using assms(2) by (metis \<open>f 6 - f 2 = 4 * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "f (x + 10) - f (x) = (a * (x + 10) + b) - (a * x + b)"
    using assms(1) by auto
  then have "f (x + 10) - f (x) = a * 10" by (auto simp: field_simps)
  have "f (x + 2) - f (x) = (a * (x + 2) + b) - (a * x + b)"
    using assms(1) by auto
  then have "f (x + 2) - f (x) = a * 2" by (auto simp: field_simps)
  have "5 * (f (x + 2) - f (x)) = 5 * (a * 2)" by (metis \<open>f (x + 2) - f x = a * 2\<close> uminus_add_conv_diff)
  have "5 * (f (x + 2) - f (x)) = 10 * a" by (smt (verit) \<open>f (x + 2) - f x = a * 2\<close>)
  thus "f (x + 10) - f (x) = 5 * (f (x + 2) - f (x))" 
    using `a = 3` by (metis \<open>f (x + 10) - f x = a * 10\<close> \<open>f (x + 2) - f x = a * 2\<close> dbl_def dbl_inc_simps(5) dbl_simps(3) dbl_simps(5) mult.commute mult_2_right)
qed