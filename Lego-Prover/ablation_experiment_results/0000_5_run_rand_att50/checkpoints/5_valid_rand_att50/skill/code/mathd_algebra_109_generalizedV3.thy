theorem mathd_algebra_109_generalized:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = k"  
    and h1 : "a = x" 
  shows "b = (k - 3 * x) / 2"
proof -
  have "3 * a + 2 * b = k" using h0 by simp
  have "3 * x + 2 * b = k" using h1 by (metis h0)
  hence "2 * b = k - 3 * x" by simp
  thus ?thesis by (simp add: field_simps)
qed