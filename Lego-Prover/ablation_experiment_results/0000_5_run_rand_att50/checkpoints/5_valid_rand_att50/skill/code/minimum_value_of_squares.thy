lemma minimum_value_of_squares:
  fixes x y :: real
  shows "1 = min ((x * y - 1)^2 + (x + y)^2) (1)"
proof -
  let ?f = "((x * y - 1)^2 + (x + y)^2)"
  have "1 \<le> ?f"
  proof -
    have "((x * y) - 1)^2 \<ge> 0"
      by auto
    have "(x + y)^2 \<ge> 0"
      by auto
    thus ?thesis
      by sos
  qed
  have "?f \<ge> 1 \<longrightarrow> min ?f 1 = 1"
    by auto
  have "?f < 1 \<longrightarrow> min ?f 1 = ?f"
    by auto
  thus "1 = min ?f 1"
  proof (cases "?f < 1")
    case True
    then show ?thesis
      by sos
  next
    case False
    then show ?thesis
      by (simp add: min_def)
  qed
qed