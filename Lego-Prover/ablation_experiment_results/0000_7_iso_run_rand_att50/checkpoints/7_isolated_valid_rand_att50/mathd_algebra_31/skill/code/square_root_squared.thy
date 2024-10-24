lemma square_root_squared:
  fixes u :: real
  assumes "u >= 0"
  shows "sqrt (u^2) = u"
proof -
  have "sqrt (u^2) = u" using assms by (simp add: real_sqrt_eq_iff real_sqrt_unique)
  thus ?thesis by simp
qed