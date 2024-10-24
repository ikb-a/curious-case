theorem mathd_algebra_parametrized:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = d"
  shows "b = (c - 3*d) / 2"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * d + 2 * b = c" using h1 eq by simp
  have "3 * d + 2 * b = c" by (metis \<open>3 * d + 2 * b = c\<close>)
  thus ?thesis using `3 * d + 2 * b = c` by simp
qed