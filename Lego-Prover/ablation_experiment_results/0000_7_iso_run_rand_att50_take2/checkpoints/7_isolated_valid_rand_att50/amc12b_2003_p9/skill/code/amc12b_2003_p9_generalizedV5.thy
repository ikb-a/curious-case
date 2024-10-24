theorem amc12b_2003_p9_generalized:
  fixes a b c d :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f c - f d = e"
  shows "f (c + 10) - f d = 10 * a + e"
proof -
  have "f c - f d = (a * c + b) - (a * d + b)"
    using assms(1) by auto
  then have "f c - f d = a * (c - d)" by (auto simp: field_simps)
  then have "a * (c - d) = e" using assms(2) by (metis)
  have "f (c + 10) - f d = (a * (c + 10) + b) - (a * d + b)"
    using assms(1) by auto
  then have "f (c + 10) - f d = a * (c + 10 - d)" by (auto simp: field_simps)
  then have "f (c + 10) - f d = a * (c - d) + 10 * a" by (simp add: algebra_simps)
  thus ?thesis using `a * (c - d) = e` by simp
qed