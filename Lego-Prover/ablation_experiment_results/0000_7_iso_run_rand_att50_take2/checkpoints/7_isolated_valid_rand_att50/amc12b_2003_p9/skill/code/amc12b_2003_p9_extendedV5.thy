theorem amc12b_2003_p9_extended:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f n - f m = (n - m) * a"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)"
    using assms(1) by auto
  then have "f 6 - f 2 = (6 - 2) * a" by simp
  have "(6 - 2) * a = 12" using assms(2) by (metis \<open>f 6 - f 2 = (6 - 2) * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "f n - f m = (a * n + b) - (a * m + b)"
    using assms(1) by auto
  then have "f n - f m = (n - m) * a" by (auto simp: field_simps)
  have "f n - f m = (n - m) * 3" using `a = 3` by (metis add.commute add_diff_cancel_left assms(1) diff_conv_add_uminus mult.commute right_diff_distrib uminus_add_conv_diff)
  thus ?thesis by (metis \<open>f n - f m = (n - m) * a\<close> uminus_add_conv_diff)
qed