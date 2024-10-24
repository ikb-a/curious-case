lemma minimum_value_expression:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "0 \<le> (x * y - 1)^2" by (simp add: power2_eq_square)
  have "0 \<le> (x + y)^2" by (simp add: power2_eq_square)
  then have "0 \<le> (x * y - 1)^2 + (x + y)^2" by (simp add: add_nonneg_nonneg)
  have "1 \<le> (x * y - 1)^2 + (x + y)^2 + 1" 
    using add_nonneg_nonneg[of "1" "(x * y - 1)^2 + (x + y)^2"] 
    by simp
  thus ?thesis 
    by sos
qed