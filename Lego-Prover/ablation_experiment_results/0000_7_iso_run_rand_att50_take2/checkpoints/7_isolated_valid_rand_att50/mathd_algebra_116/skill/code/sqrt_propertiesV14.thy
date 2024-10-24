lemma sqrt_properties:
  fixes a :: real
  shows "sqrt (a^2) = abs a"
proof -
  have "sqrt (a^2) * sqrt (a^2) = a^2" 
    by (simp add: power2_eq_square)  
  then have "sqrt (a^2) = sqrt (abs a * abs a)" 
    by auto  
  also have "... = abs a" 
    by auto  
  finally show ?thesis 
    by auto
qed