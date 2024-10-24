theorem amc12b_2003_p9_generalized:
  fixes a b x y z :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> t. f t = a * t + b"
    and "f x - f y = (x - y) * a"
  shows "f z - f y = (z - y) * a"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(1) by auto
  then have "f z - f y = a * (z - y)" by (auto simp: field_simps)
  thus ?thesis using assms(2) by simp
qed