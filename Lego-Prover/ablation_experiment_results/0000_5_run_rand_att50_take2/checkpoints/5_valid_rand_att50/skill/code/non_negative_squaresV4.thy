lemma non_negative_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0" and "(a * b)^2 >= 0"
proof -
  show "a^2 >= 0" 
    by (simp add: power2_eq_square)  
  show "b^2 >= 0" 
    by (simp add: power2_eq_square)  
  show "(a * b)^2 >= 0" 
    by (simp add: power2_eq_square)  
qed