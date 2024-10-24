theorem amc12b_2003_generalized:
  fixes a b :: real and f :: "real \<Rightarrow> real" and x1 x2 :: real
  assumes "\<forall> x. f x = a * x + b"
  shows "f x1 - f x2 = a * (x1 - x2)"
proof -
  have "f x1 - f x2 = (a * x1 + b) - (a * x2 + b)"
    using assms by auto
  then have "f x1 - f x2 = a * x1 - a * x2" by simp
  thus "f x1 - f x2 = a * (x1 - x2)" by (simp add: field_simps)
qed