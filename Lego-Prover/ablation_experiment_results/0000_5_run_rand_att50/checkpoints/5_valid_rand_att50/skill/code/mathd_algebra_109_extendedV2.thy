theorem mathd_algebra_109_extended:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
    and h2 : "c = 2*a + b"
  shows "b = 0" and "c = 8"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  show "b = 0" using `2 * b = 0` by simp
  have c_eq: "c = 2*a + b" using h2 h1 by simp
  thus "c = 8" using `b = 0` by (metis add.comm_neutral dbl_def dbl_simps(3) dbl_simps(5) h1 mult_2)
qed