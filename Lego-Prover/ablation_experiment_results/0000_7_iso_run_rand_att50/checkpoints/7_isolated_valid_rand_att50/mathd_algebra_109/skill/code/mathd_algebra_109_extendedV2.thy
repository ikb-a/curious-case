theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b + c = 12"
    and h1 : "a = 4"
    and h2 : "c = 0"
  shows "b = 0"
proof -
  have "3 * a + 2 * b + c = 12" using h0 by simp
  have "3 * 4 + 2 * b + 0 = 12" using h1 h2 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b + 0 = 12\<close>)
  have "2 * b = 12 - 12" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right eq_iff_diff_eq_0)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_0_iff diff_minus_eq_add semiring_norm(5) verit_minus_simplify(3))
  then have "b = 0 / 2" by auto
  thus "b = 0" by simp
qed