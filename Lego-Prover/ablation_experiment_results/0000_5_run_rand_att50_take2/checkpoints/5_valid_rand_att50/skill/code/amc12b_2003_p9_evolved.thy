theorem amc12b_2003_p9_evolved:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f x - f y = (x - y) * a"
proof -
  have "f x - f y = (a * x + b) - (a * y + b)" for x y by (simp add: assms(1))
  thus ?thesis by (metis add.commute add_diff_cancel_left add_diff_eq assms(1) mult.commute right_diff_distrib)
qed