theorem amc12b_2003_p9_v2:
  fixes a b x1 x2 x3 :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x1 - f x2 = x1 - x2"
  shows "f x3 - f x2 = (x3 - x2) * a"
proof -
  have "f x1 - f x2 = (a * x1 + b) - (a * x2 + b)" using assms(1) by simp
  hence "f x1 - f x2 = a * (x1 - x2)" by (auto simp: field_simps)
  then have "x1 - x2 = a * (x1 - x2)" using assms(2) by simp
  have "f x3 - f x2 = (a * x3 + b) - (a * x2 + b)" using assms(1) by simp
  thus ?thesis by (simp add: field_simps)
qed