lemma min_value_of_expression:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 \<ge> 0" 
    by auto
  have "(x + y)^2 \<ge> 0"
    by auto
  have "((x * y) - 1)^2 + (x + y)^2 = ((x * y) - 1)^2 + (x + y)^2 + 0" 
    by simp
  have "((x * y) - 1)^2 + (x + y)^2 \<ge> 0 + 0"
    by (simp add: add_nonneg_nonneg)
  thus ?thesis 
    by sos
qed