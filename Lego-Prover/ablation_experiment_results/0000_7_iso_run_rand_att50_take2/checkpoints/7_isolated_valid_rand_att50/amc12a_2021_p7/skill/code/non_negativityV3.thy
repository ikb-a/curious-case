lemma non_negativity:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  then show "a^2 >= 0" 
  proof (cases "a >= 0")
    case True
    then have "a * a >= 0" by (simp add: mult_nonneg_nonneg)
    then show ?thesis by simp
  next
    case False
    then have "a < 0" by simp
    then have "a * a >= 0" by (simp add: mult_nonneg_nonneg)
    then show ?thesis by simp
  qed
qed