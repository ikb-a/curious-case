theorem mathd_algebra_general:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "4*a - b = d"
  shows "b = (c - 3*a) / 2"
proof -
  from h0 have "2 * b = c - 3*a" by (simp add: algebra_simps)
  hence "b = (c - 3*a) / 2" by (simp add: field_simps)
  thus ?thesis .
qed