lemma real_square_root_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" by auto
  moreover have "a = 0 \<longrightarrow> sqrt a = 0" using assms by simp
  moreover have "a > 0 \<longrightarrow> sqrt a > 0" by auto
  ultimately show ?thesis
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a > 0" using assms by auto 
    then show ?thesis by auto
  qed
qed