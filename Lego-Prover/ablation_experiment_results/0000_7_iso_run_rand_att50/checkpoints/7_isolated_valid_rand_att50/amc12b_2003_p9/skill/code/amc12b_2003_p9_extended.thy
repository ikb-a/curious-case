theorem amc12b_2003_p9_extended:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
    and "f 4 - f 2 = 6"  
  shows "f 12 - f 2 = 30"
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
  have "f 4 - f 2 = (a * 4 + b) - (a * 2 + b)"
    using assms(1) by simp
  then have "f 4 - f 2 = a * 4 - a * 2"
    by simp
  then have "f 4 - f 2 = a * (4 - 2)"
    by (simp add: algebra_simps)
  then have "f 4 - f 2 = 2 * a" by simp
  then have "f 4 - f 2 = 2 * 3" using `a = 3` by simp
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)"
    using assms(1) by simp
  then have "f 12 - f 2 = a * 12 - a * 2"
    by simp
  then have "f 12 - f 2 = a * (12 - 2)"
    by (simp add: algebra_simps)
  then have "f 12 - f 2 = a * 10" by simp
  then have "f 12 - f 2 = 3 * 10" using `a = 3` by simp
  then show ?thesis by simp
qed