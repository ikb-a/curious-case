lemma nonnegative_squares:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "0 <= x^2" by (simp add: power2_eq_square)  
  have "0 <= y^2" by (simp add: power2_eq_square)  
  have "x^2 + y^2 >= 0 + 0" using `0 <= x^2` `0 <= y^2`
    by (simp add: add_nonneg_nonneg)  
  thus "x^2 + y^2 >= 0" by simp  
qed