lemma minimum_value_expression:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "1 \<le> (x * y - 1)^2 + (x + y)^2" 
  proof -
    have "(x * y - 1)^2 \<ge> 0" by (simp add: power2_eq_square)
    have "(x + y)^2 \<ge> 0" by (simp add: power2_eq_square)
    have "0 \<le> (x * y - 1)^2" and "0 \<le> (x + y)^2" by auto
    then show ?thesis 
      using add_nonneg_nonneg[of "(x * y - 1)^2" "(x + y)^2"]
      by sos
  qed
  then show ?thesis 
    by (metis add_nonneg_nonneg zero_le_power2)
qed