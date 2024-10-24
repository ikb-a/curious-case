theorem mathd_algebra_109_generalized:
  fixes a b k :: real
  assumes h0 : "k * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = (12 - k * 4) / 2"
proof -
  have eq: "k * a + 2 * b = 12" using h0 by simp
  have "k * 4 + 2 * b = 12" using h1 eq by simp
  thus ?thesis by (simp add: field_simps)
qed