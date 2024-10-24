lemma minimum_value_expression:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 \<ge> 0" by (simp add: power2_eq_square)
  have "(x + y)^2 \<ge> 0" by (simp add: power2_eq_square)
  then have "((x * y) - 1)^2 + (x + y)^2 \<ge> 0 + 0"
    by (simp add: add_nonneg_nonneg)
  let ?expr = "((x * y) - 1)^2 + (x + y)^2"
  have "?expr = 0" if "x * y = 1" and "x + y = 0" for x y :: real using that
    by sos
  have "((x * y) - 1)^2 + (x + y)^2 = 0" if "x * y = 1" and "x + y = 0" 
    for x y :: real using that
    by (simp add: power2_eq_square)
  have "((x * y) - 1)^2 + (x + y)^2 \<ge> 1" 
  proof -
    have "((x * y) - 1)^2 + (x + y)^2 \<ge> 1" 
      by sos
    thus ?thesis by auto
  qed
  thus ?thesis
    by (metis add_nonneg_nonneg)
qed