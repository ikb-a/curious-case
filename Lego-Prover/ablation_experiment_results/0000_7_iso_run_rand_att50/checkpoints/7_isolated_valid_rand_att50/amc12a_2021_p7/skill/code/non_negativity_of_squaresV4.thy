lemma non_negativity_of_squares:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" 
    by (simp add: power2_eq_square)  
  moreover have "a * a >= 0" 
    using mult_nonneg_nonneg by auto  
  ultimately show ?thesis by simp  
qed