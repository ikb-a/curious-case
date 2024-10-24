theorem amc12b_2003_p9_multi_dim:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f (k + 12) - f (k + 2) = 10 * a"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)"
    using assms(1) by simp
  then have "f 6 - f 2 = a * 6 - a * 2"
    by simp
  then have "f 6 - f 2 = a * (6 - 2)"
    by (simp add: algebra_simps)
  then have "f 6 - f 2 = 4 * a" using assms(2) by simp
  then have "4 * a = 12" by (metis assms(2) dbl_simps(3))
  then have "a = 12 / 4" by (simp add: field_simps)
  then have "a = 3" by simp
  have "f (k + 12) - f (k + 2) = (a * (k + 12) + b) - (a * (k + 2) + b)"
    using assms(1) by simp
  then have "f (k + 12) - f (k + 2) = a * (k + 12) - a * (k + 2)"
    by simp
  then have "f (k + 12) - f (k + 2) = a * ((k + 12) - (k + 2))"
    by (simp add: algebra_simps)
  then have "f (k + 12) - f (k + 2) = a * 10" by simp
  then have "f (k + 12) - f (k + 2) = 3 * 10" using `a = 3` by simp
  then show ?thesis by (metis \<open>f (k + 12) - f (k + 2) = a * 10\<close> mult.commute)
qed