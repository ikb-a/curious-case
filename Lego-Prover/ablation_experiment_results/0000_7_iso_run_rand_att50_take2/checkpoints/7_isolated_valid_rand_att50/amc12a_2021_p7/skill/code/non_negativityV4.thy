lemma non_negativity:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" by (simp add: power2_eq_square)
  then have "x^2 + y^2 \<ge> y^2" by auto
  have "y^2 \<ge> 0" by (simp add: power2_eq_square)
  then have "x^2 + y^2 + (x * y)^2 \<ge> x^2 + y^2" 
    by auto
  have "(x * y)^2 \<ge> 0" by (simp add: power2_eq_square)
  then have "x^2 + y^2 + (x * y)^2 \<ge> x^2 + y^2" 
    by auto
  thus ?thesis by (simp add: add_nonneg_nonneg)
qed