lemma mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  then have "12 + 2 * b = c" using h2 by simp
  have "c - 12 = 2 * b" using `12 + 2 * b = c` by simp
  have "2 * b = 0" using h2 by (metis \<open>c - 12 = 2 * b\<close> dbl_simps(3) diff_self)
  show ?thesis using `2 * b = 0` by simp
qed