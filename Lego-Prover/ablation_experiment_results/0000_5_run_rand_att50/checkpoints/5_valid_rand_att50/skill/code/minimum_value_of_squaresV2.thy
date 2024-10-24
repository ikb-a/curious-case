lemma minimum_value_of_squares:
  fixes x y :: real
  shows "1 = min ((x * y - 1)^2 + (x + y)^2) (1)"
proof -
  let ?f = "(\<lambda>xy. (xy - 1)^2 + (x + y)^2)"
  have "1 = min (?f (x * y)) (1)"
  proof (cases "((x * y - 1)^2 + (x + y)^2) \<le> 1")
    case True
    then show ?thesis 
      by sos
  next
    case False
    then have "((x * y - 1)^2 + (x + y)^2) > 1" 
      by simp
    then show ?thesis 
      by simp
  qed
  thus ?thesis by simp
qed