lemma sqrt_properties:
  fixes a :: real
  shows "sqrt (a^2) = abs a"
proof -
  have "sqrt (a^2) * sqrt (a^2) = a^2" 
    by (metis abs_if_raw abs_of_neg abs_of_pos neg_0_less_iff_less power2_eq_square real_sqrt_abs real_sqrt_abs2 real_sqrt_eq_iff)
  then have "sqrt (a^2) = abs a" 
    (is "?lhs = ?rhs")
  proof (cases "a \<ge> 0")
    case True
    then have "abs a = a" by simp
    thus ?thesis using `sqrt (a^2) * sqrt (a^2) = a^2` by auto
  next
    case False
    then have "abs a = -a" by simp
    thus ?thesis using `sqrt (a^2) * sqrt (a^2) = a^2` by auto
  qed
  thus ?thesis by simp
qed