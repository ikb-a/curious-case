lemma sum_of_squares_nonneg:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" and "y^2 >= 0" by (simp_all add: nonnegativity_of_squares)
  then show ?thesis by simp
qed