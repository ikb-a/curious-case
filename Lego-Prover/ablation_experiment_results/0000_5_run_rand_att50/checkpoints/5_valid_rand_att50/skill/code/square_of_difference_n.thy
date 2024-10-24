lemma square_of_difference_n:
  fixes a :: "real list"
  assumes "length a = 2"
  shows "(a ! 0 - a ! 1)^2 = (a ! 0)^2 - 2 * (a ! 0) * (a ! 1) + (a ! 1)^2"
proof -
  have "a ! 0 - a ! 1 = a ! 0 + - (a ! 1)" by simp
  then show ?thesis by (metis diff_minus_eq_add square_of_difference_multi verit_minus_simplify(3))
qed