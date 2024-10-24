theorem mathd_algebra_multi:
  fixes a b :: real
  assumes h0 : "n > 0"
    and h1 : "3*a + 2*b = n"
    and h2 : "a = 4"
  shows "b = (n - 12) / 2"
proof -
  have eq: "3*a + 2*b = n" using h1 by simp
  have sub: "3 * 4 + 2 * b = n" using h2 eq by simp
  have simplified: "12 + 2*b = n" by (smt (verit) sub)
  have isolate: "2*b = n - 12" using simplified by simp
  have solution: "b = (n - 12) / 2" using isolate by simp
  show ?thesis using solution by simp
qed