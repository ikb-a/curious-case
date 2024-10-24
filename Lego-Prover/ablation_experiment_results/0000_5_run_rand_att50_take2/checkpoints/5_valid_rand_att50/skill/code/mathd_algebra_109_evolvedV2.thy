theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = (c - 3*a) / 2"
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3 * 4 + 2 * b = c" using h1 eq by simp
  have simplified: "12 + 2*b = c" using sub by simp
  hence "2*b = c - 12" by simp
  thus "b = (c - 3*a) / 2" using h1 h2 by simp
qed