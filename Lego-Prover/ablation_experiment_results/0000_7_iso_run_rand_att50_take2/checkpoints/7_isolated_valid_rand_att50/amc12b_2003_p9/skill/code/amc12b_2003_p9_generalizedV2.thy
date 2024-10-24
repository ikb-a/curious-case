theorem amc12b_2003_p9_generalized:
  fixes a b x y z :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = z"
  shows "f (x + 6) - f y = (x + 6 - y) * a"
proof -
  have "f (x + 6) - f y = (a * (x + 6) + b) - (a * y + b)"
    using assms(1) by auto
  then have "f (x + 6) - f y = a * (x + 6 - y)" by (auto simp: field_simps)
  thus ?thesis by simp
qed