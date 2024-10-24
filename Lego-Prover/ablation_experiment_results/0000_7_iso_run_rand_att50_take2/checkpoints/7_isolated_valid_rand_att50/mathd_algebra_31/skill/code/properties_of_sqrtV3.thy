lemma properties_of_sqrt:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0 \<longleftrightarrow> a = 0" by (simp add: real_sqrt_zero)
  then show "sqrt a >= 0"
  proof (cases "a = 0")
    case True
    then show ?thesis by simp
  next
    case False
    with assms have "a > 0" by auto
    hence "sqrt a > 0" by auto
    then show ?thesis by simp
  qed
qed