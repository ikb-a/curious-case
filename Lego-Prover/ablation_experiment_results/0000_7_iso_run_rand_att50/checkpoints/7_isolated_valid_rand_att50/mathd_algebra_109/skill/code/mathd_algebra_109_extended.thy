theorem mathd_algebra_109_extended:
  fixes a b :: real
    and x y :: real
  assumes h0 : "3*a + 2*b = 12"
      and h1 : "a = 4"
      and h2 : "x = a"
      and h3 : "y = b"
  shows "y = 0"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 by (metis h0)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 12 - 12" by (smt (verit) h0 h1)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  then have "b = 0 / 2" by auto
  thus "y = 0" using h3 by simp
qed