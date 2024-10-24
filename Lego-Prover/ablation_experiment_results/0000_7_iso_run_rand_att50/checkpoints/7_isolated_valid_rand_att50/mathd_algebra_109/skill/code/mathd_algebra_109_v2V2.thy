theorem mathd_algebra_109_v2:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  from h1 have "3 * a = 3 * 4" by simp
  then have "3 * a + 2 * b = 12" using h0 by simp
  thus "b = 0" 
  proof -
    have "12 + 2 * b = 12" using `3 * a + 2 * b = 12` by (smt (verit) \<open>3 * a = 3 * 4\<close>)
    thus ?thesis by simp
  qed
qed