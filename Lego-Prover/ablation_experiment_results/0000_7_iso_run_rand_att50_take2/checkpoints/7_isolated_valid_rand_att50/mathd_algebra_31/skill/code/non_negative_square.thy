lemma non_negative_square:
  fixes a :: real
  assumes "a >= 0"
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0" 
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a > 0" using assms by linarith
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  qed
qed