theorem amc12b_2003_p9_generalized:
  fixes a b x y z :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = a * (x - y)"
  shows "f z - f y = a * (z - y)"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(1) by simp
  then show ?thesis by (simp add: algebra_simps)
qed