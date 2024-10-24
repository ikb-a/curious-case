theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have eq: "3*a + 2*b = 12" using h0 by simp
  have sub: "3 * a + 2 * b = 12" using eq by simp
  have sub_a: "3 * 4 + 2 * b = 12" using h1 sub by simp
  have simplified: "12 + 2*b = 12" using sub_a by simp
  have isolate: "2*b = 12 - 12" using simplified by simp
  have solution: "b = 0" using isolate by simp
  thus ?thesis by simp
qed