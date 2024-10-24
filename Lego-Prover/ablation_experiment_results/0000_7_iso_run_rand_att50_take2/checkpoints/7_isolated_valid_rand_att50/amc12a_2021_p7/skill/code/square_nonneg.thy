lemma square_nonneg:
  fixes a :: real
  shows "a^2 \<ge> 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  thus "a^2 \<ge> 0" 
  proof (cases "a \<ge> 0")
    case True
    then have "a * a \<ge> 0" by (simp add: mult_nonneg_nonneg)
    then show ?thesis by simp
  next
    case False
    then have "a < 0" by simp
    then have "(-a) > 0" by (simp add: not_le)
    thus ?thesis by (simp add: mult_nonneg_nonneg)
  qed
qed