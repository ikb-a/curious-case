theorem mathd_algebra_n_dimensional:
  fixes a :: "real list"  
  assumes "length a = n"  
    and "3 * (a!0) + 2 * (a!1) = 12"  
    and "a!0 = 4"  
  shows "a!1 = 0"  
proof -
  have "3 * 4 + 2 * (a!1) = 12" using assms(3) by (metis assms(2) mult.commute mult_2 mult_2_right mult_numeral_1 nat_mult_eq_1_iff one_eq_numeral_iff)
  have "12 + 2 * (a!1) = 12" by (smt (verit) \<open>3 * 4 + 2 * a ! 1 = 12\<close>)
  have "2 * (a!1) = 0" using `12 + 2 * (a!1) = 12` by simp
  have "a!1 = 0" using `2 * (a!1) = 0` by simp
  show ?thesis using `a!1 = 0` by simp
qed