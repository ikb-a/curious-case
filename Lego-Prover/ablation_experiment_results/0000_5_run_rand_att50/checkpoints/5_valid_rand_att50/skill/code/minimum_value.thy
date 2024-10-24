lemma minimum_value:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  let ?f = "(x * y - 1)^2 + (x + y)^2"
  have "((x * y) - 1)^2 \<ge> 0"
    by auto
  have "(x + y)^2 \<ge> 0"
    by auto
  then have "?f \<ge> 0 + 0"
    by (simp add: add_nonneg_nonneg)
  have "?f = (x * y - 1)^2 + (x + y)^2"
  proof -
    show "?f = (x * y - 1)^2 + (x + y)^2" by simp
  qed
  have "?f \<ge> 1"
  proof (cases "((x * y - 1)^2 + (x + y)^2) < 1")
    case True
    then have "?f < 1" 
      by simp
    then show ?thesis 
      by sos
  next
    case False
    then have "?f \<ge> 1"
      by simp
    then show ?thesis 
      by simp
  qed
  then show ?thesis 
    by simp
qed