theorem amc12b_2003_p9:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 30"
proof -
  have "f 6 - f 2 = a * (6 - 2)" using linear_difference[OF assms(1)] by simp
  then have "f 6 - f 2 = 4 * a" using `f 6 - f 2 = 12` by simp
  then have "a = 3" by (smt (verit) assms(2))
  have "f 12 - f 2 = a * (12 - 2)" using linear_difference[OF assms(1)] by simp
  then have "f 12 - f 2 = 10 * a" by simp
  then show ?thesis using `a = 3` by simp
qed