theorem amc12b_2003_p9_generalized:
  fixes a b c d :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f c - f d = (c - d) * (a + k)"
  shows "f c - f d = (c - d) * (a + k)"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  have "f c - f d = (a * c + b) - (a * d + b)" by (simp add: assms(1))
  have "f c - f d = a * c - a * d" by (simp add: assms(1))
  thus ?thesis by (metis assms(2) add.commute)
qed