lemma simplify_square_root:
  fixes x y :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) * sqrt(x^2) = x^2" by (simp add: power2_eq_square)
  then show "sqrt(x^2) = abs x"
  proof (cases "x >= 0")
    case True
    then have "abs x = x" by simp
    thus ?thesis using `sqrt(x^2) * sqrt(x^2) = x^2` by (auto simp: power2_eq_square)
  next
    case False
    then have "x < 0" by simp
    then have "abs x = -x" by simp
    hence "sqrt(x^2) = sqrt((-x)^2)" by (simp add: power2_eq_square)
    also have "... = -x" using `x < 0` by auto
    finally show ?thesis using `abs x = -x` by simp
  qed
qed