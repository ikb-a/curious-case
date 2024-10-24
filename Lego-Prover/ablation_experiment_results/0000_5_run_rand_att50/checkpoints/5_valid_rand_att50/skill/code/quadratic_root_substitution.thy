lemma quadratic_root_substitution:
  fixes a b c k x :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "c = - (a * x^2 + b * x)"
proof -
  have "a * x^2 + b * x + c = 0" using assms by simp
  then have "c = - (a * x^2 + b * x)" by (simp add: algebra_simps)
  thus ?thesis by simp
qed