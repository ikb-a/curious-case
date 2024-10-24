theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3 * 4 + 2 * b = c" using h1 eq by simp
  then have simplified: "12 + 2*b = c" by simp
  have isolate: "2*b = c - 12" using simplified by simp
  thus ?thesis using isolate by (simp add: field_simps)
qed