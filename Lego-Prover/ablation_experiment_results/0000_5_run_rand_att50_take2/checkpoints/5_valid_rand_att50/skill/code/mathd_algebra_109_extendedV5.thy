theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b + c = 12"
    and h1 : "a = 4" 
    and h2 : "c = 0"
  shows "b = 0"
proof -
  have eq: "3*a + 2*b + c = 12" using h0 by simp
  have sub: "3 * 4 + 2 * b + 0 = 12" using h1 h2 eq by simp
  have simplified: "12 + 2*b = 12" by (smt (verit) sub)
  have isolate: "2*b = 12 - 12" using simplified by simp
  have solution: "b = 0" using isolate by simp
  show ?thesis using solution by simp
qed