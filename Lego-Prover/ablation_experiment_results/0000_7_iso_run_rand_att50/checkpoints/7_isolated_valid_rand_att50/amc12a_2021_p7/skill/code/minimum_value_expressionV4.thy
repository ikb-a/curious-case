lemma minimum_value_expression:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 \<ge> 0" by (simp add: power2_eq_square)
  have "(x + y)^2 \<ge> 0" by (simp add: power2_eq_square)
  have "((x * y) - 1)^2 + (x + y)^2 \<ge> 0 + 0" 
    by (simp add: add_nonneg_nonneg)
  let ?expr = "((x * y) - 1)^2 + (x + y)^2"
  show ?thesis
  proof (cases "x * y = 1 \<and> x + y = 0")
    case True
    then have "?expr = 0" 
      by (simp add: power2_eq_square)
    thus ?thesis 
      by sos
  next
    case False
    then have "((x * y) - 1)^2 + (x + y)^2 > 0"
      by sos
    have "((x * y) - 1)^2 + (x + y)^2 \<ge> 1"
      using False
      by sos
    thus ?thesis
      by simp
  qed
qed