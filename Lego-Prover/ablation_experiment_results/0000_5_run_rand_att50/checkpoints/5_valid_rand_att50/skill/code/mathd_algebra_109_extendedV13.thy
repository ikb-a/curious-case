theorem mathd_algebra_109_extended:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = k"  
  shows "b = (12 - 3*k) / 2" 
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * k + 2 * b = 12" using h1 eq by simp
  have "2 * b = 12 - 3 * k" by (smt (verit) h0 h1)
  thus ?thesis by (simp add: field_simps)
qed