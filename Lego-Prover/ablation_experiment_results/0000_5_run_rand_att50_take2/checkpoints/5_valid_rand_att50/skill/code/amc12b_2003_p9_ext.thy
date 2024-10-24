theorem amc12b_2003_p9_ext:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f (k + 6) - f (k + 2) = 4 * a"
proof -
  have "f x = a * x + b" for x by (simp add: assms(1))
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)" by (simp add: assms(1))
  have "f 6 - f 2 = 6 * a - 2 * a" by (metis \<open>\<And>x. f x = a * x + b\<close> add.commute add_diff_cancel_left dbl_def dbl_simps(3) diff_diff_eq diff_minus_eq_add left_diff_distrib' mult.commute numeral_BitM one_plus_BitM or_not_num_neg.simps(2) right_diff_distrib' semiring_norm(2))
  have "4 * a = 12" using `f 6 - f 2 = 12` by (smt (verit) \<open>f 6 - f 2 = 6 * a - 2 * a\<close>)
  let ?k = "k"
  have "f (?k + 6) - f (?k + 2) = (a * (?k + 6) + b) - (a * (?k + 2) + b)"
    by (simp add: assms(1))
  also have "... = a * (?k + 6) - a * (?k + 2)" by simp
  also have "... = a * ((?k + 6) - (?k + 2))" by (simp add: algebra_simps)
  also have "... = a * 4" by simp
  finally show ?thesis by simp
qed