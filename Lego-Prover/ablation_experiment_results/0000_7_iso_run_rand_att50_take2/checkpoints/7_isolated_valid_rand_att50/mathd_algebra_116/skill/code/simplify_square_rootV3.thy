lemma simplify_square_root:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x * y) = sqrt x * sqrt y"
proof -
  have "sqrt(x * y) = sqrt((sqrt x) ^ 2 * (sqrt y) ^ 2)" 
    using assms by (simp add: power2_eq_square)
  also have "... = sqrt x * sqrt y" 
    by (metis calculation real_sqrt_mult)
  finally show ?thesis .
qed