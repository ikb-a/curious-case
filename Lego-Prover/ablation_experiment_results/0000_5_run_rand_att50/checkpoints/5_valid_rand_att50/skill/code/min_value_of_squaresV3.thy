lemma min_value_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" 
    by auto
  moreover have "y^2 \<ge> 0" 
    by auto
  ultimately show ?thesis 
    by (simp add: add_nonneg_nonneg)
qed