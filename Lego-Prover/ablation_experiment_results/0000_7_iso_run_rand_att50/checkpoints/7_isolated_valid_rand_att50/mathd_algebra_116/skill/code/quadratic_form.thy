lemma quadratic_form:
  fixes a b c x :: real
  assumes "a * x^2 + b * x + c = 0"
  shows "(a * x^2 + b * x) = -c"
proof -
  have "a * x^2 + b * x = -c" using assms by simp
  thus ?thesis by simp
qed