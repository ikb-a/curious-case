theorem linear_function_difference:
  fixes a b c d :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f c - f d = e"
  shows "f (c + k) - f d = k * a + e"
proof -
  let ?x = "c + k"
  have "f ?x = a * ?x + b" by (simp add: assms(1))
  have "f c - f d = (a * c + b) - (a * d + b)" by (simp add: assms(1))
  have "f c - f d = a * (c - d)" by (metis assms(1) add.commute add_diff_cancel_left dbl_def dbl_simps(3) diff_diff_eq diff_minus_eq_add left_diff_distrib' mult.commute right_diff_distrib' semiring_norm(2))
  then have "a * (c - d) = e" using assms(2) by simp
  have "f ?x - f d = (a * ?x + b) - (a * d + b)" by (simp add: assms(1))
  have "f ?x - f d = a * ?x - a * d" by (metis assms(1) add.commute add_diff_cancel_left dbl_def dbl_simps(3) diff_diff_eq diff_minus_eq_add left_diff_distrib' mult.commute right_diff_distrib' semiring_norm(2))
  have "f ?x - f d = a * (c + k - d)" by (metis \<open>f (c + k) - f d = a * (c + k) - a * d\<close> add_diff_eq diff_diff_eq2 mult_delta_right right_diff_distrib')
  also have "... = a * (c - d) + a * k" by sos
  also have "... = e + a * k" using `a * (c - d) = e` by simp
  finally show ?thesis by simp
qed