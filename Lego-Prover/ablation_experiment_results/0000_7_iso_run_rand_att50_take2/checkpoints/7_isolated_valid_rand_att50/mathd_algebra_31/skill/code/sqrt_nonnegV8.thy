lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof (cases "a = 0")
  case True
  then show ?thesis by simp
next
  case False
  then show ?thesis using assms by auto
qed