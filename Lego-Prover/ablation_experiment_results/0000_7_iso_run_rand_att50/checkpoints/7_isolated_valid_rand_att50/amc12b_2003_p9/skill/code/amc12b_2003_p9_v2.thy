theorem amc12b_2003_p9_v2:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 30"
proof -
  have f6_f2: "f 6 - f 2 = a * (6 - 2)" using assms(1) by (simp)
  then have "f 6 - f 2 = 4 * a" by simp
  then have "4 * a = 12" using assms(2) by simp
  then have "a = 3" by (simp add: field_simps)
  have f12_f2: "f 12 - f 2 = a * (12 - 2)" using assms(1) by (simp)
  then have "f 12 - f 2 = 10 * a" by simp
  then show ?thesis using `a = 3` by simp
qed