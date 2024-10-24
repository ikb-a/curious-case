lemma non_negativity_of_squares:
  fixes x y :: real
  shows "x^2 >= 0" and "y^2 >= 0" and "x^2 * y^2 >= 0"
proof -
  have "x^2 = x * x" by sos
  then show "x^2 >= 0" 
    using mult_nonneg_nonneg[of x x] 
    by auto
  have "y^2 = y * y" by sos
  then show "y^2 >= 0" 
    using mult_nonneg_nonneg[of y y] 
    by auto
  have "x^2 * y^2 = (x * x) * (y * y)" by sos
  then show "x^2 * y^2 >= 0" 
    using mult_nonneg_nonneg[of "x^2" "y^2"] 
    by auto
qed