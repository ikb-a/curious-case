lemma min_sum_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" 
    by auto
  moreover have "y^2 >= 0" 
    by auto
  ultimately have "x^2 + y^2 >= 0 + 0" 
    by auto
  thus ?thesis 
    by simp
qed