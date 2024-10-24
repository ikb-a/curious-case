lemma nonneg_square:
  fixes a :: real
  shows "0 \<le> a^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  thus "0 \<le> a^2" 
  proof (cases "a \<ge> 0")
    case True
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then have "a < 0" by simp
    then have "-a > 0" by (simp add: not_le)
    thus ?thesis by (simp add: mult_nonneg_nonneg)
  qed
qed