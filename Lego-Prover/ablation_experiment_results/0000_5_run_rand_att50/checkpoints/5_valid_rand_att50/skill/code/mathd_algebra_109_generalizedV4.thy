theorem mathd_algebra_109_generalized:
  fixes a b :: real
  assumes h0: "3 * a + 2 * b = d"
    and h1: "a = x"
  shows "b = (d - 3 * x) / 2"
proof -
  have "3 * a + 2 * b = d" using h0 by simp
  then have "3 * x + 2 * b = d" using h1 by simp
  thus ?thesis by (simp add: algebra_simps)
qed