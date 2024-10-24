lemma trivial_inequality:
  fixes x :: real
  shows "x^2 >= 0"
proof -
  have "x^2 = x * x" by (simp add: power2_eq_square)
  then show "x^2 >= 0"
  proof (cases "x >= 0")
    case True
    then have "x * x >= 0" using mult_nonneg_nonneg by auto
    thus ?thesis by simp
  next
    case False
    then have "x < 0" by simp
    hence "x * x >= 0" using mult_nonneg_nonneg by auto
    thus ?thesis by simp
  qed
qed