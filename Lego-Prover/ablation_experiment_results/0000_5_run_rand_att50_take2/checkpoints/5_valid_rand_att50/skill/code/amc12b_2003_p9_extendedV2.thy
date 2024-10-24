theorem amc12b_2003_p9_extended:
  fixes a b c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
    and "f c - f 2 = (c - 2) * a"  
  shows "f 12 - f 2 = 30"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f 6 - f 2 = 6 * a - 2 * a" by (metis \<open>\<And>x. f x = a * x + b\<close> add.commute add_diff_cancel_left dbl_def dbl_simps(3) diff_add_eq_diff_diff_swap diff_minus_eq_add left_diff_distrib' mult.commute numeral_BitM one_plus_BitM or_not_num_neg.simps(2) right_diff_distrib semiring_norm(2))
  have "4 * a = 12" using `f 6 - f 2 = 12` by (smt (verit) \<open>f 6 - f 2 = 6 * a - 2 * a\<close>)
  have "a = 3" by (smt (verit) \<open>4 * a = 12\<close>)
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f 12 - f 2 = 12 * a - 2 * a" by (metis add.commute add_diff_cancel_left assms(1) dbl_def dbl_simps(3) diff_diff_eq diff_minus_eq_add left_diff_distrib mult.commute numeral_BitM one_plus_BitM or_not_num_neg.simps(2) right_diff_distrib semiring_norm(2))
  have "f 12 - f 2 = 10 * a" by (smt (verit) \<open>f 12 - f 2 = 12 * a - 2 * a\<close>)
  then have "f 12 - f 2 = 10 * 3" using `a = 3` by simp
  show ?thesis by (simp add: `f 12 - f 2 = 10 * 3`)
qed