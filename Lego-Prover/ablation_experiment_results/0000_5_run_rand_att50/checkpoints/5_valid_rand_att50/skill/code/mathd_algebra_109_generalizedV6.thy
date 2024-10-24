theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  then have "12 + 2 * b = c" by simp
  thus ?thesis 
  proof -
    have "2 * b = c - 12" using `12 + 2 * b = c` by simp
    thus "b = (c - 12) / 2" by auto
  qed
qed