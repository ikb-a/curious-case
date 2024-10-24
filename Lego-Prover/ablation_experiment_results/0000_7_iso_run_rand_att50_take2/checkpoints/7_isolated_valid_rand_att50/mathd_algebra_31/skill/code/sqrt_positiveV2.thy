lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x = 0 \<longleftrightarrow> x = 0" by auto
  then show "sqrt x >= 0" using assms
  proof (cases "x = 0")
    case True
    then show ?thesis by simp
  next
    case False
    with assms show ?thesis by simp
  qed
qed