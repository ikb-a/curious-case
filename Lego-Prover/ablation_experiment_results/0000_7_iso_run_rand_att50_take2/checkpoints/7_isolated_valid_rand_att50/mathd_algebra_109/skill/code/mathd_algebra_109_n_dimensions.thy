theorem mathd_algebra_109_n_dimensions:
  fixes a :: "real list" and b :: "real list"
  assumes h0 : "3 * (a ! 0) + 2 * (b ! 0) = 12" 
    and h1 : "a ! 0 = 4"
  shows "b ! 0 = 0"
proof -
  have "3 * 4 + 2 * (b ! 0) = 12" using h1 by (metis assms(1))
  have "12 + 2 * (b ! 0) = 12" by (smt (verit) \<open>3 * 4 + 2 * (b ! 0) = 12\<close>)
  have "2 * (b ! 0) = 0" using `12 + 2 * (b ! 0) = 12` by simp
  have "b ! 0 = 0" using `2 * (b ! 0) = 0` by simp
  show ?thesis using `b ! 0 = 0` by simp
qed