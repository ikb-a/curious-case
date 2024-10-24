theorem mathd_algebra_109_2d:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "3*c + 2*d = 12"
    and h2 : "a = 4"
    and h3 : "c = 4"
  shows "b = d"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  have "3 * c + 2 * d = 12" using h1 by simp
  have "3 * 4 + 2 * b = 12" using h2 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "3 * 4 + 2 * d = 12" using h3 by (metis dbl_inc_simps(3) dbl_simps(3) h1)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "12 + 2 * d = 12" by (smt (verit) \<open>3 * 4 + 2 * d = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right diff_minus_eq_add semiring_norm(5) verit_minus_simplify(3))
  have "2 * d = 0" by (metis \<open>12 + 2 * d = 12\<close> add_cancel_right_right diff_minus_eq_add semiring_norm(5) verit_minus_simplify(3))
  then have "b = 0 / 2" by (metis \<open>2 * b = 0\<close> divide_eq_0_iff mult_eq_0_iff zero_neq_numeral)
  then have "d = 0 / 2" by (metis \<open>2 * d = 0\<close> divide_eq_0_iff mult_eq_0_iff zero_neq_numeral)
  thus "b = d" by (simp add: \<open>b = 0 / 2\<close>)
qed