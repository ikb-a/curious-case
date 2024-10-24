lemma sqrt_and_square:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt(x^2) = x"
proof -
  have "x^2 >= 0" by (simp add: assms)
  then show ?thesis by (metis assms real_sqrt_unique)
qed