theorem mathd_algebra_110:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have "3 * a + 2 * b = c" using h0 by simp
  have "c = 12" using h2 by simp
  have "3 * 4 + 2 * b = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0 h2)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 12 - 12" by (metis \<open>12 + 2 * b = 12\<close> add_diff_cancel_left' dbl_def dbl_simps(3) h2 mult_2)
  have "2 * b = 0" by (metis \<open>2 * b = 12 - 12\<close> dbl_simps(3) diff_self h2)
  then have "b = 0 / 2" by auto
  thus "b = 0" by simp
qed