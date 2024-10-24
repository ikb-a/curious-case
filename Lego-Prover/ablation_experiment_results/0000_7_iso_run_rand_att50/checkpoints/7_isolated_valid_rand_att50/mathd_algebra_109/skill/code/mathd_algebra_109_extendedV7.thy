theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = c"  
    and h1 : "a = k"            
  shows "b = (c - 3*k) / 2"      
proof -
  have "3 * a + 2 * b = c" using h0 by simp
  have "3 * k + 2 * b = c" using h1 by (metis h0)
  have "2 * b = c - 3 * k" by (smt (verit) h0 h1)
  then show "b = (c - 3 * k) / 2" by (simp add: field_simps)
qed