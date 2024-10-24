lemma algebra_sqineq_non_neg:
  fixes a b :: real
  assumes "a^2 + b^2 >= 0"
  shows "a * b <= (a^2 + b^2) / 2"
proof -
  have "a^2 + b^2 >= 0" using assms by simp
  then have "2 * a * b <= a^2 + b^2" using square_expansion by (metis sum_squares_bound)
  then show ?thesis by (simp add: divide_simps)
qed