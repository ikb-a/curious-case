theorem mathd_algebra_109_extended:
  fixes a b :: real
  fixes n :: nat
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
    and h2 : "n > 0"
  shows "b = 0 \<or> b = 1/n * (12 - 3 * a)"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 12 - 12" by (smt (verit) h0 h1)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right diff_minus_eq_add semiring_norm(5) verit_minus_simplify(3))
  then have "b = 0 / 2" by auto
  thus "b = 0 \<or> b = 1/n * (12 - 3 * a)" using h2 by auto
qed