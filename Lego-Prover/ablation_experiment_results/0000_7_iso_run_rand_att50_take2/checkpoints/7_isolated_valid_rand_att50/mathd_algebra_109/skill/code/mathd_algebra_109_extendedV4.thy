theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have "3 * 4 + 2 * b = c" using h1 h0 by simp
  hence "12 + 2 * b = c" by simp
  thus ?thesis by (simp add: field_simps)
qed