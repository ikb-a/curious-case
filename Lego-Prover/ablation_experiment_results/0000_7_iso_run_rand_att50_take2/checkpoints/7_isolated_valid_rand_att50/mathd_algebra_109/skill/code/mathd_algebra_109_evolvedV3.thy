theorem mathd_algebra_109_evolved:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c = 12"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = c" using h1 h0 by simp
  then have "12 + 2 * b = c" using h2 by simp
  thus "b = 0" 
  proof -
    have "12 + 2 * b = 12" using h2 by (metis \<open>12 + 2 * b = c\<close>)
    have "2 * b = 0" using `12 + 2 * b = 12` by simp
    thus "b = 0" using `2 * b = 0` by simp
  qed
qed