lemma min_square:
  fixes x y :: real
  shows "0 <= (x - y)^2"
proof -
  have "(x - y)^2 = (x - y) * (x - y)" by (simp add: power2_eq_square)
  moreover have "x - y >= 0 \<or> x - y < 0" by auto
  ultimately show "0 <= (x - y)^2" 
  proof (cases "x - y >= 0")
    case True
    then have "(x - y)^2 >= 0" by (simp add: mult_nonneg_nonneg)
    thus ?thesis by simp
  next
    case False
    then have "x - y < 0" by simp
    hence "(x - y)^2 >= 0" by (simp add: mult_nonneg_nonneg)
    thus ?thesis by simp
  qed
qed