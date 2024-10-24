lemma simplify_square_root_expression:
  fixes x :: real
  shows "sqrt(x^2) = abs x"
proof -
  have "sqrt(x^2) * sqrt(x^2) = x^2" by (metis abs_if_raw abs_of_neg abs_of_pos neg_0_less_iff_less power2_eq_square real_sqrt_abs real_sqrt_abs2 real_sqrt_eq_iff)
  then have "sqrt(x^2) = abs x" 
  proof (cases "x \<ge> 0")
    case True
    then have "abs x = x" by simp
    thus ?thesis by auto
  next
    case False
    then have "abs x = -x" by simp
    thus ?thesis by auto
  qed
  thus ?thesis by simp
qed