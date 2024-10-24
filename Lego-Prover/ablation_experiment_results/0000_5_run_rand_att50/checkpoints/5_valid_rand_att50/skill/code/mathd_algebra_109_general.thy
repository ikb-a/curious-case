theorem mathd_algebra_109_general:
  fixes a b :: real
  assumes h0: "3*a + 2*b = c"  
    and h1: "a = d"            
  shows "b = (c - 3*d) / 2"     
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * d + 2 * b = c" using h1 eq by simp
  have "2 * b = c - 3 * d" by (smt (verit) h0 h1)
  show ?thesis using `2 * b = c - 3 * d` by (simp add: field_simps)
qed