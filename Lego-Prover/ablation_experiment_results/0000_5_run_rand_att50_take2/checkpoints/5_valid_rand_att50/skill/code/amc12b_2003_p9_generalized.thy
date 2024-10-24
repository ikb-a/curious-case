theorem amc12b_2003_p9_generalized:
  fixes a b c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f c - f 2 = (c - 2) * a"
  shows "f 12 - f 2 = 10 * a"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  have "f c - f 2 = (a * c + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f c - f 2 = a * c - a * 2" by (metis add_diff_cancel_right assms(1))
  have "a * (c - 2) = (c - 2) * a" using `f c - f 2 = (c - 2) * a` by simp
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f 12 - f 2 = a * 12 - a * 2" by (metis add.commute add_diff_cancel_left assms(1) dbl_def dbl_simps(3) diff_add_eq_diff_diff_swap diff_minus_eq_add numeral_BitM one_plus_BitM or_not_num_neg.simps(2) right_diff_distrib right_diff_distrib' semiring_norm(2))
  have "f 12 - f 2 = 10 * a" by (smt (verit) \<open>f 12 - f 2 = a * 12 - a * 2\<close>)
  show ?thesis by (simp add: `f 12 - f 2 = 10 * a`)
qed