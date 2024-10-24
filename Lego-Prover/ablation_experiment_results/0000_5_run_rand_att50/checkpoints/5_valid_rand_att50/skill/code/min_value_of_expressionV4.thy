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
  have "((x * y) - 1)^2 + (x + y)^2 \<ge> 1"
  proof -
    have "((x * y) - 1)^2 + (x + y)^2 = ((x * y) - 1)^2 + (x + y)^2 + 0" 
      by simp
    consider (case1) "((x * y) - 1) = 0" | (case2) "((x * y) - 1) \<noteq> 0" 
      by auto
    then show ?thesis
    proof cases
      case case1
      then have "x * y = 1" by simp
      hence "0 + (x + y)^2 \<ge> 0" by auto
      thus ?thesis by sos
    next
      case case2
      then have "((x * y) - 1)^2 > 0" by auto
      thus ?thesis using case2 by sos
    qed
  qed
  thus ?thesis by simp
qed