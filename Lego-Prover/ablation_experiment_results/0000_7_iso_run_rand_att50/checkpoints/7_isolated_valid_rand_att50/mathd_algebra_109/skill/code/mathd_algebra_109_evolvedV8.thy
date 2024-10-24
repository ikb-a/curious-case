theorem mathd_algebra_109_evolved:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  hence "3 * 4 + 2 * b = 12" using h1 by simp
  then have "12 + 2 * b = 12" by (simp)
  thus "b = 0" 
  proof -
    have "2 * b = 12 - 12" by (smt (verit) h0 h1)
    thus "b = 0" by (simp add: field_simps)
  qed
qed