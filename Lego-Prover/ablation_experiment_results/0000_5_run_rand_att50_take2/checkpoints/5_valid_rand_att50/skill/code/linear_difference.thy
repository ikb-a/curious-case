theorem linear_difference:
  fixes a b x y :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall>x. f x = a * x + b"
    and "f y - f x = d"
  shows "f (y + (y - x)) - f x = 2 * d"
proof -
  have "f y - f x = (a * y + b) - (a * x + b)" by (simp add: assms(1))
  have "f y - f x = a * (y - x)" by (smt (verit) \<open>f y - f x = a * y + b - (a * x + b)\<close> add_diff_add right_diff_distrib')
  then have "d = a * (y - x)" using assms(2) by simp
  have "f (y + (y - x)) - f x = (a * (y + (y - x)) + b) - (a * x + b)" by (simp add: assms(1))
  have "f (y + (y - x)) - f x = a * (y + (y - x) - x)" by (smt (verit) \<open>f (y + (y - x)) - f x = a * (y + (y - x)) + b - (a * x + b)\<close> add_implies_diff diff_add_eq_diff_diff_swap right_diff_distrib)
  have "f (y + (y - x)) - f x = a * (y - x + (y - x))" by (metis \<open>f (y + (y - x)) - f x = a * (y + (y - x) - x)\<close> add_diff_add diff_diff_eq group_cancel.sub1)
  have "f (y + (y - x)) - f x = 2 * a * (y - x)" by (metis \<open>f (y + (y - x)) - f x = a * (y - x + (y - x))\<close> assms(1) mult.assoc mult.left_commute mult_2)
  then show ?thesis by (smt (verit) \<open>f (y + (y - x)) - f x = a * (y - x + (y - x))\<close> \<open>f y - f x = a * (y - x)\<close> assms(2) distrib_left mult_2)
qed