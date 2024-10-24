lemma simplify_square_root:
  fixes a b :: real
  assumes "a \<ge> 0" "b \<ge> 0"
  shows "sqrt(a) * sqrt(b) = sqrt(a * b)"
proof -
  have "sqrt(a) * sqrt(b) = sqrt(a * b)"
  proof (cases "a = 0")
    case True
    then show ?thesis
      by auto
  next
    case False
    then have "sqrt(a) > 0" using assms(1) by auto
    then show ?thesis
    proof (cases "b = 0")
      case True
      then show ?thesis using True assms(2) by auto
    next
      case False
      then have "sqrt(b) > 0" using assms(2) by auto
      then have "sqrt(a) * sqrt(b) = sqrt(a * b)" 
        by (metis real_sqrt_mult)
      then show ?thesis by simp
    qed
  qed
  thus ?thesis by auto
qed