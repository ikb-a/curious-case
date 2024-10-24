lemma simplify_square_root:
  fixes x y :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) * sqrt(x^2) = x^2" by (simp add: power2_eq_square)
  then show "sqrt(x^2) = abs x"
  proof (cases "x < 0")
    case True
    then have "x^2 = (abs x)^2" by auto
    thus ?thesis by auto
  next
    case False
    then have "x >= 0" by (simp add: not_less)
    have "abs x = x" by (metis \<open>0 \<le> x\<close> abs_of_nonneg)
    thus ?thesis by auto
  qed
qed