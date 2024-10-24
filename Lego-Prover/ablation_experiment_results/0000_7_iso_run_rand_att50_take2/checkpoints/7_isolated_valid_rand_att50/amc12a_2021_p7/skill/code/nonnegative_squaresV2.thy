lemma nonnegative_squares:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" and "y^2 >= 0" 
    by auto
  then have "x^2 + y^2 >= 0 + 0" by (simp add: add_nonneg_nonneg)
  thus "x^2 + y^2 >= 0" by simp
qed