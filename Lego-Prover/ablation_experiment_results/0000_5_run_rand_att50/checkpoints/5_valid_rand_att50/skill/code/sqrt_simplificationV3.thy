lemma sqrt_simplification:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x) * sqrt(y) = sqrt(x * y)"
proof -
  have "sqrt(x) * sqrt(y) = sqrt(x * y * 1)" 
    by (metis mult_cancel_left2 real_sqrt_mult)
  also have "1 = sqrt(1)" 
    by auto
  then have "sqrt(x * y * 1) = sqrt(x * y) * sqrt(1)" 
    by (metis assms real_sqrt_mult)
  finally show ?thesis 
    by auto
qed