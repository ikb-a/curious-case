theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
    and h2 : "c = 2 * a + b"
  shows "c = 8"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  hence "b = 0" by simp
  have "c = 2 * a + b" using h2 by simp
  thus "c = 8" using h1 `b = 0` by simp
qed