lemma non_negative_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0" 
  proof (cases "a >= 0")
    case True
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then have "a < 0" by (simp)
    hence "a^2 = (-a) * (-a)" by sos
    also have "... >= 0" by (simp add: mult_nonneg_nonneg)
    finally show ?thesis by simp
  qed
  have "b^2 = b * b" by sos
  then show "b^2 >= 0" 
  proof (cases "b >= 0")
    case True
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then have "b < 0" by (simp)
    hence "b^2 = (-b) * (-b)" by sos
    also have "... >= 0" by (simp add: mult_nonneg_nonneg)
    finally show ?thesis by simp
  qed
qed