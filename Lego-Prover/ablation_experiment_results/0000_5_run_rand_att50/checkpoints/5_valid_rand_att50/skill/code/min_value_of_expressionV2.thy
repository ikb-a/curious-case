lemma min_value_of_expression:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 \<ge> 0"
    by auto
  have "(x + y)^2 \<ge> 0"
    by auto
  then have "((x * y) - 1)^2 + (x + y)^2 \<ge> 0 + 0"
    by (simp add: add_nonneg_nonneg)
  also have "... \<ge> 1"
  proof (cases "((x * y) - 1)^2 + (x + y)^2 < 1")
    case True
    then show ?thesis 
      by sos
  next
    case False
    then have "((x * y) - 1)^2 + (x + y)^2 \<ge> 1"
      by simp
    then show ?thesis 
      by simp
  qed
  thus ?thesis 
    by auto
qed