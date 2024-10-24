lemma nonnegative_squares:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" by auto 
  have "y^2 >= 0" by auto 
  then have "x^2 + y^2 >= 0 + y^2" by simp 
  also have "... >= 0" using `y^2 >= 0` by simp 
  ultimately show "x^2 + y^2 >= 0" by simp
qed