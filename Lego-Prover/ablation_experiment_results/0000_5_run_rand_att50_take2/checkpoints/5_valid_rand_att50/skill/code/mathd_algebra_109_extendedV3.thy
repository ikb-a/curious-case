theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4" 
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3 * 4 + 2 * b = c" using h1 eq by simp
  have eq_c: "c = 12" using h2 by simp
  have simplified: "12 + 2*b = 12" using sub eq_c by simp
  have isolate: "2*b = 12 - 12" using simplified by simp
  have solution: "b = 0" using isolate by simp
  show ?thesis using solution by simp
qed