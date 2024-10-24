lemma non_negativity_of_squares:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  moreover have "a * a >= 0" 
  proof (cases "a >= 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "a < 0" by simp
    hence "a * a = -a * -a" by (simp add: mult_neg_neg)
    also have "... >= 0" by (simp add: mult_nonneg_nonneg)
    finally show ?thesis by simp
  qed
  ultimately show ?thesis by simp
qed