theorem amc12b_2003_p9_multidimensional:
  fixes a :: real and b :: "real \<Rightarrow> real"
  assumes "\<forall>x. b x = a * x + f"
    and "b (6::real) - b (2::real) = 12"
  shows "b (12::real) - b (2::real) = 30"
proof -
  have "b (6::real) - b (2::real) = (a * 6 + f) - (a * 2 + f)"
    using assms(1) by auto
  then have "b (6::real) - b (2::real) = 4 * a" by simp
  have "4 * a = 12" using assms(2) by (metis \<open>b (6::real) - b (2::real) = 4 * a\<close> dbl_simps(3))
  then have "a = 3" by (simp add: divide_simps)
  have "b (12::real) - b (2::real) = (a * 12 + f) - (a * 2 + f)"
    using assms(1) by auto
  then have "b (12::real) - b (2::real) = 10 * a" by simp
  have "10 * a = 30" using `a = 3` by simp
  thus "b (12::real) - b (2::real) = 30" by (smt (verit) \<open>b (12::real) - b (2::real) = 10 * a\<close>)
qed