lemma square_and_sqrt:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt(x^2) = x"
proof -
  have "sqrt(x^2) = sqrt(x * x)" by simp
  then show ?thesis using assms by (metis real_sqrt_eq_iff real_sqrt_unique)
qed