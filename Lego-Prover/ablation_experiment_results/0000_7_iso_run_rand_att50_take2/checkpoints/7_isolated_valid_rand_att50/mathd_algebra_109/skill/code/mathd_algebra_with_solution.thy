theorem mathd_algebra_with_solution:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "4*a - b = 0"
  shows "b = (12 - 3*a) / 2"
proof -
  from h0 have "2 * b = 12 - 3*a" by (simp add: algebra_simps)
  hence "b = (12 - 3*a) / 2" by (simp add: field_simps)
  thus ?thesis .
qed