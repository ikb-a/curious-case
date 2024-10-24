lemma mathd_algebra_109_2D_general:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12" 
      and h1 : "a = x"  
  shows "b = (12 - 3*x) / 2"  
proof -
  have "3 * a + 2 * b = 12" using h0 by simp
  have "3 * x + 2 * b = 12" using h1 by (metis h0)
  hence "2 * b = 12 - 3 * x" by (simp add: algebra_simps)
  thus ?thesis by (simp add: field_simps)
qed