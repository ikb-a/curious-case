theorem mathd_algebra_generalized:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = c"  
    and h1 : "a = d"            
  shows "b = (c - 3*d) / 2"     
proof -
  have "3 * d + 2 * b = c" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "2 * b = c - 3 * d" by (smt (verit) h0 h1)
  show ?thesis using `2 * b = c - 3 * d` by simp
qed