lemma sqrt_square:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt(a^2) = a"
proof -
  have "a^2 >= 0" using assms by simp
  then show ?thesis by (metis assms real_sqrt_unique)
qed