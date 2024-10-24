lemma simplify_square_root:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"
proof -
  have "sqrt(a) * sqrt(b) = sqrt(a * b)" if "a > 0" and "b > 0" for a b
  proof -
    have "sqrt(a) * sqrt(b) = sqrt(a * b)" 
      using that by (metis real_sqrt_mult)
    thus ?thesis .
  qed
  show ?thesis
  proof (cases "a = 0")
    case True
    then show ?thesis
      by (cases "b = 0") auto
  next
    case False
    with assms have "sqrt(a) > 0" by auto
    show ?thesis
    proof (cases "b = 0")
      case True
      then show ?thesis using True assms(1) by auto
    next
      case False
      with assms have "sqrt(b) > 0" by auto
      have "sqrt(a) * sqrt(b) = sqrt(a * b)" 
        by (metis real_sqrt_mult)
      then show ?thesis by simp
    qed
  qed
qed