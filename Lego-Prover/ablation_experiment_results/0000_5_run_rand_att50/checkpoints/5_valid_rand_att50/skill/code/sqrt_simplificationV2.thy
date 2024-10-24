lemma sqrt_simplification:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x) * sqrt(y) = sqrt(x * y)"
proof -
  have "sqrt(x) * sqrt(y) = sqrt(x * y) * sqrt(1)" 
    by (metis mult_cancel_left2 real_sqrt_eq_1_iff real_sqrt_mult)
  also have "... = sqrt(x * y)" 
    by (simp add: real_sqrt_eq_1_iff)
  finally show ?thesis by simp
qed