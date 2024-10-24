lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x * sqrt x = x" using assms by (simp add: power2_eq_square)
  then show ?thesis
  proof (cases "x = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "x > 0" by (metis assms order_less_le)
    from `sqrt x * sqrt x = x` and `x > 0` show ?thesis
      using real_sqrt_eq_iff by auto
  qed
qed