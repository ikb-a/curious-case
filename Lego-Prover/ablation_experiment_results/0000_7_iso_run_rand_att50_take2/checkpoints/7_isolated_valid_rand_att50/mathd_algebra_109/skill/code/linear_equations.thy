theorem linear_equations:
  fixes a b c d :: real
  assumes h0 : "3 * a + 2 * b = c"
    and h1 : "a = d"
  shows "b = (c - 3 * d) / 2"
proof -
  have "3 * d + 2 * b = c" using h1 h0 by simp
  hence "2 * b = c - 3 * d" by simp
  thus ?thesis by auto
qed