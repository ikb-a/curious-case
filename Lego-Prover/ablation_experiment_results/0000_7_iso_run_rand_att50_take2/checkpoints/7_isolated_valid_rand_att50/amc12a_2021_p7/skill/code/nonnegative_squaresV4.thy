lemma nonnegative_squares:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "0 \<le> x^2" and "0 \<le> y^2" 
    by auto
  then have "x^2 + y^2 \<ge> 0 + 0" by (simp add: add_nonneg_nonneg)
  thus "x^2 + y^2 >= 0" by simp
qed