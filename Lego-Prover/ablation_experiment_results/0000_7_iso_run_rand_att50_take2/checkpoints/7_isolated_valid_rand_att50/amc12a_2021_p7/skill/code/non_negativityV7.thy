lemma non_negativity:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" by (simp add: power2_eq_square)
  have "y^2 \<ge> 0" by (simp add: power2_eq_square)
  have "(x * y)^2 \<ge> 0" by (simp add: power2_eq_square)
  have "x^2 + y^2 + (x * y)^2 \<ge> 0 + 0 + 0"
    using `x^2 \<ge> 0` `y^2 \<ge> 0` `(x * y)^2 \<ge> 0` 
    by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed