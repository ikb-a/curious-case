theorem mathd_algebra_109_extended:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = d"
    and h2 : "c = 12"
  shows "b = (c - 3*d) / 2"
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3*d + 2*b = c" using h1 eq by simp
  have simplified: "3*d + 2*b = 12" using h2 sub by simp
  have isolate: "2*b = 12 - 3*d" using simplified by simp
  have solution: "b = (12 - 3*d) / 2" using isolate by simp
  show ?thesis using solution by (metis dbl_inc_simps(3) dbl_simps(3) h1 h2)
qed