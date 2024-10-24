lemma min_square:
  fixes x y :: real
  shows "0 <= (x - y)^2"
proof -
  have "(x - y)^2 = (x - y) * (x - y)" by (simp add: power2_eq_square)
  hence "0 <= (x - y)^2"
  proof (cases "x - y >= 0")
    case True
    then show ?thesis by (simp add: mult_nonneg_nonneg)
  next
    case False
    then have "x - y < 0" by simp
    moreover have "x - y = -(y - x)" by simp
    ultimately have "(x - y)^2 = (-(y - x)) * (-(y - x))" by sos
    thus ?thesis by (simp add: mult_nonneg_nonneg)
  qed
  thus ?thesis by simp
qed