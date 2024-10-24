lemma min_value_of_expression:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 \<ge> 0" 
    by auto
  have "(x + y)^2 \<ge> 0"
    by auto
  have "((x * y) - 1)^2 + (x + y)^2 \<ge> 0 + 0"
    by (simp add: add_nonneg_nonneg)
  moreover have "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2 * (x * y) + 1 + (x + y)^2"
    by sos
  ultimately have "((x * y) - 1)^2 + (x + y)^2 \<ge> 1" 
    (is "_ \<ge> 1")
  proof -
    have "((x * y) - 1)^2 \<ge> 0" 
      by auto
    have "(x + y)^2 + ((x * y) - 1)^2 \<ge> 0 + 0"
      by (simp add: add_nonneg_nonneg)
    then have "((x * y) - 1)^2 + (x + y)^2 \<ge> 0"
      by simp
    moreover have "(x + y)^2 = x^2 + 2 * x * y + y^2"
      by sos
    then have "x^2 + 2 * x * y + y^2 = (x + y)^2"
      by (simp add: power2_eq_square)
    thus ?thesis 
      by sos
  qed
  thus ?thesis 
    by (metis add_nonneg_nonneg)
qed