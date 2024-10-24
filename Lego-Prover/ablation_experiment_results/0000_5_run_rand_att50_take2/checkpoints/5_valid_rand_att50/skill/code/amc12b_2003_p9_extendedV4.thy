theorem amc12b_2003_p9_extended:
  fixes a b c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f c - f 2 = 12"
  shows "f (c + 6) - f 2 = 12 + 6 * a"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  have "f c - f 2 = (a * c + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f c - f 2 = a * c - a * 2" by (metis add_diff_cancel_right assms(1) uminus_add_conv_diff)
  hence "a * (c - 2) = 12" using `f c - f 2 = 12` by (auto simp: field_simps)
  have "f (c + 6) - f 2 = (a * (c + 6) + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f (c + 6) - f 2 = a * (c + 6) - a * 2" by (metis \<open>\<And>x. f x = a * x + b\<close> add.commute add_diff_cancel_left diff_diff_eq2 diff_minus_eq_add one_plus_BitM or_not_num_neg.simps(2) right_diff_distrib right_diff_distrib' semiring_norm(2))
  have "f (c + 6) - f 2 = a * (c - 2 + 6)" by (smt (verit) \<open>a * (c - 2) = 12\<close> \<open>f (c + 6) - f 2 = a * (c + 6) - a * 2\<close> \<open>f c - f 2 = a * c - a * 2\<close> add_diff_add add_implies_diff assms(2) right_diff_distrib')
  thus "f (c + 6) - f 2 = 12 + 6 * a" by (metis \<open>a * (c - 2) = 12\<close> algebra_simps)
qed