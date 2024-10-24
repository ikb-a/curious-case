theorem mathd_algebra_109_multi_dim:
  fixes a :: "real list" and b :: "real list"
  assumes h0 : "3 * (a ! 0) + 2 * (b ! 0) = 12" 
    and h1 : "a ! 0 = 4" 
  shows "b ! 0 = 0"
proof -
  have eq: "3 * (a ! 0) + 2 * (b ! 0) = 12" using h0 by simp
  have sub: "3 * 4 + 2 * (b ! 0) = 12" using h1 eq by simp
  have simplified: "12 + 2 * (b ! 0) = 12" by (smt (verit) sub)
  have isolate: "2 * (b ! 0) = 12 - 12" using simplified by simp
  have solution: "(b ! 0) = 0" using isolate by simp
  show ?thesis using solution by simp
qed