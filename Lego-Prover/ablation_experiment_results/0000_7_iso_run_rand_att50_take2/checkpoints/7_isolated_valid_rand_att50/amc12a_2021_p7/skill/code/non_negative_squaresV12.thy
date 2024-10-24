lemma non_negative_squares:
  fixes x :: real
  shows "0 \<le> x^2"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  then show "0 <= x^2" 
  proof (cases "x >= 0")
    case True
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then show ?thesis by (simp add: power2_eq_square)
  qed
qed