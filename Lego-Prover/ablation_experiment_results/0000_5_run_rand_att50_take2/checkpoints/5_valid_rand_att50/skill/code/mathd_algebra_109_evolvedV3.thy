theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
    and h2 : "a \<ge> 0" and h3 : "b \<ge> 0"  
  shows "b = 0"
proof -
  have eq: "3*a + 2*b = 12" using h0 by simp
  have sub: "3 * 4 + 2 * b = 12" using h1 eq by simp
  have simplified: "12 + 2*b = 12" by (smt (verit) sub)
  have isolate: "2*b = 12 - 12" using simplified by simp
  have solution: "b = 0" using isolate by simp
  thus "b = 0" using h2 h3 by simp 
qed