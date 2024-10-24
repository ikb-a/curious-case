theorem amc12b_2003_p9_generalized:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = m * x + n"  
    and "f x1 - f x2 = d"  
  shows "f x3 - f x2 = (x3 - x2) * m"  
proof -
  have "f x1 - f x2 = (m * x1 + n) - (m * x2 + n)"
    using assms(1) by auto
  then have "f x1 - f x2 = m * (x1 - x2)" by (auto simp: field_simps)
  have "m * (x1 - x2) = d" using assms(2) by (metis \<open>f x1 - f x2 = m * (x1 - x2)\<close> dbl_simps(3))
  have "f x3 - f x2 = (m * x3 + n) - (m * x2 + n)"
    using assms(1) by auto
  then have "f x3 - f x2 = m * (x3 - x2)" by (auto simp: field_simps)
  thus "f x3 - f x2 = (x3 - x2) * m" by simp
qed