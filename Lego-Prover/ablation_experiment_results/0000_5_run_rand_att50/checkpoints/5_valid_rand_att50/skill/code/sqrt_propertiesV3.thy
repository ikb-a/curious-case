lemma sqrt_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x * y) = sqrt(x) * sqrt(y)"
proof -
  have "sqrt(x * y) * sqrt(1) = sqrt(x * y)" 
    by auto
  also have "sqrt(1) = 1" 
    by auto
  then have "sqrt(x * y) = sqrt(x) * sqrt(y) * sqrt(1)"
    by (metis mult.right_neutral real_sqrt_eq_1_iff real_sqrt_mult)
  thus ?thesis 
    by auto
qed