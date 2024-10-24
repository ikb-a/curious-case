lemma sqrt_square:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a ^ 2 = a"
proof -
  have "sqrt a ^ 2 = a" 
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "sqrt a > 0" using assms by auto
    then have "sqrt a ^ 2 = a" by auto
    thus ?thesis .
  qed
  thus ?thesis by simp
qed