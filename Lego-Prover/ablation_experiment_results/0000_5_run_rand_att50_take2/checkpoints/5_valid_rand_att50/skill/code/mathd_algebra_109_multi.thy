theorem mathd_algebra_109_multi:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0" and "b = 0 + 0" and "b = 0 + 1 + (-1)"
proof -
  have eq: "3*a + 2*b = 12" using h0 by simp
  have sub: "3 * 4 + 2 * b = 12" using h1 eq by simp
  have simplified: "12 + 2*b = 12" by (smt (verit) sub)
  have isolate: "2*b = 12 - 12" using simplified by simp
  have solution: "b = 0" using isolate by simp
  then show "b = 0" by simp
  then show "b = 0 + 0" by simp
  then show "b = 0 + 1 + (-1)" by simp
qed