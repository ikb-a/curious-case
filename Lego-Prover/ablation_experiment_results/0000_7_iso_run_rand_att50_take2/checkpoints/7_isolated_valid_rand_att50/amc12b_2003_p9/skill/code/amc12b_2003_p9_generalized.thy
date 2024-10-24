theorem amc12b_2003_p9_generalized:
  fixes a b c d :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f c - f d = e"
  shows "f (c + 6) - f d = (6 * a) + e"
proof -
  have "f c - f d = (a * c + b) - (a * d + b)"
    using assms(1) by auto
  then have "f c - f d = a * (c - d)" by (auto simp: field_simps)
  have "a * (c - d) = e" using assms(2) by (metis \<open>f c - f d = a * (c - d)\<close> dbl_simps(3))
  have "f (c + 6) - f d = (a * (c + 6) + b) - (a * d + b)"
    using assms(1) by auto
  then have "f (c + 6) - f d = a * (c + 6 - d)" by (auto simp: field_simps)
  have "c + 6 - d = (c - d) + 6" by simp
  then show "f (c + 6) - f d = (6 * a) + e" 
    using `a * (c - d) = e` by (metis \<open>f (c + 6) - f d = a * (c + 6 - d)\<close> add.commute diff_add_eq group_cancel.sub1 mult.commute ring_class.ring_distribs(1))
qed