theorem mathd_algebra_generalized:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = d"  
    and h1 : "a = e"  
  shows "b = (d - 3 * e) / 2"  
proof -
  have eq: "3 * a + 2 * b = d" using h0 by simp
  have "3 * e + 2 * b = d" using h1 eq by simp
  have "2 * b = d - 3 * e" by (smt (verit) h0 h1)
  show ?thesis using `2 * b = d - 3 * e` by simp
qed