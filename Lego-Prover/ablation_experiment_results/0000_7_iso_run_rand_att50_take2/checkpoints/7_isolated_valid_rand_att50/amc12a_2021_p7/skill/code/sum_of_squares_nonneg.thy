lemma sum_of_squares_nonneg:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" by auto
  hence "x^2 + y^2 >= y^2" by simp
  thus "x^2 + y^2 >= 0" by auto
qed