theorem mathd_algebra_system:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "2*a - b = d"
    and h2 : "a = 4"
  shows "b = (12 - 3 * 4) / 2"
proof -
  have eq0: "3*a + 2*b = 12" using h0 by simp
  have eq1: "2*a - b = d" using h1 by simp
  have sub: "3 * 4 + 2 * b = 12" using h2 eq0 by simp
  have simplified: "12 + 2*b = 12" by (smt (verit) sub)
  have isolate: "2*b = 12 - 12" using simplified by simp
  have solution: "b = 0" using isolate by simp
  thus ?thesis using solution by (simp add: h2)
qed