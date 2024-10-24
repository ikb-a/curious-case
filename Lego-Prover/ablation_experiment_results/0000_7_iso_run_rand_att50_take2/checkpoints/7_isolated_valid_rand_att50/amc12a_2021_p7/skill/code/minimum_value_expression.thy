lemma minimum_value_expression:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "1 \<le> (x * y - 1)^2 + (x + y)^2" 
  proof -
    have "0 \<le> (x * y - 1)^2" by (simp add: power2_eq_square)
    have "0 \<le> (x + y)^2" by (simp add: power2_eq_square)
    then have "(x * y - 1)^2 + (x + y)^2 \<ge> 0 + 0" by (simp add: add_nonneg_nonneg)
    have "0 \<le> (x * y - 1)^2 + (x + y)^2" by simp
    have "(x * y - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x^2 + 2 * x * y + y^2)"
      by sos
    also have "... = (x^2 * y^2) + (x^2) + (y^2) + 1" 
      using power2_eq_square by (simp add: algebra_simps)
    ultimately show ?thesis by (simp add: zero_le_power)
  qed
  thus ?thesis by simp
qed