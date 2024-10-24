theorem mathd_algebra_general:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
  shows "b = (c - 3*a) / 2"
proof -
  have "2*b = c - 3*a" using h0 by simp
  thus "b = (c - 3*a) / 2" by (simp add: field_simps)
qed