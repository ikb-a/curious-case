lemma non_negative_real_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  have "b^2 = b * b" by (simp add: power2_eq_square)
  show "a^2 >= 0" 
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
  show "b^2 >= 0" 
  proof (cases "b >= 0")
    case True
    then have "b * b >= 0" by (simp add: mult_nonneg_nonneg)
    then show ?thesis by simp
  next
    case False
    then have "b < 0" by simp
    then have "b * b >= 0" by (simp add: mult_nonneg_nonneg)
    then show ?thesis by simp
  qed
qed