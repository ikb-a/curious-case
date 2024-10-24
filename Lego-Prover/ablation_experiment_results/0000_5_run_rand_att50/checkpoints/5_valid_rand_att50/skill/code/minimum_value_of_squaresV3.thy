lemma minimum_value_of_squares:
  fixes x y :: real
  shows "1 = min ((x * y - 1)^2 + (x + y)^2) (1)"
proof -
  have "((x * y - 1)^2 + (x + y)^2) \<ge> 0" 
    by auto
  have "1 = min ((x * y - 1)^2 + (x + y)^2) (1) \<longleftrightarrow> ((x * y - 1)^2 + (x + y)^2) \<ge> 1" 
    by auto
  show ?thesis 
  proof (cases "((x * y - 1)^2 + (x + y)^2) < 1")
    case True
    then have "min ((x * y - 1)^2 + (x + y)^2) (1) = 1" 
      by sos
    then show ?thesis by simp
  next
    case False
    then have "((x * y - 1)^2 + (x + y)^2) \<ge> 1" 
      by simp
    then show ?thesis 
      by auto
  qed
qed