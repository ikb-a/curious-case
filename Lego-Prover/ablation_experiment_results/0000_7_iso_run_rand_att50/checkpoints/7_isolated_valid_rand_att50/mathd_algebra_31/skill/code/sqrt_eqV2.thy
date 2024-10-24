lemma sqrt_eq:
  fixes a b :: real
  assumes "sqrt a = sqrt b"
  shows "a = b"
proof (cases "a >= 0")
  case True
  then have "sqrt a = sqrt b" using assms by auto
  then have "a = b" using True by (metis real_sqrt_eq_iff)
  thus ?thesis by simp
next
  case False
  then have "a < 0" by simp
  then have "sqrt a = sqrt b" using assms by simp
  thus ?thesis by auto
qed