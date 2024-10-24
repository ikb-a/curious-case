lemma sqrt_diff:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x) - sqrt(y) = (x - y) / (sqrt(x) + sqrt(y))"
proof -
  have "sqrt(x) - sqrt(y) = (sqrt(x) + sqrt(y)) * ((sqrt(x) - sqrt(y)) / (sqrt(x) + sqrt(y)))" 
    by (metis add_cancel_right_right add_nonneg_eq_0_iff assms(1) assms(2) diff_0_right diff_add_eq_diff_diff_swap diff_self div_0 divide_divide_eq_right eq_iff_diff_eq_0 nonzero_mult_div_cancel_left real_sqrt_ge_0_iff times_divide_eq_right)
  have "sqrt(x)^2 - sqrt(y)^2 = x - y" 
    using assms by auto
  have "sqrt(x) - sqrt(y) = (sqrt(x)^2 - sqrt(y)^2) / (sqrt(x) + sqrt(y))" 
    using `sqrt(x)^2 - sqrt(y)^2 = x - y` by (smt (verit) \<open>sqrt x - sqrt y = (sqrt x + sqrt y) * ((sqrt x - sqrt y) / (sqrt x + sqrt y))\<close> assms(1) assms(2) power2_eq_square real_sqrt_pow2_iff square_diff_square_factored times_divide_eq_right)
  thus ?thesis 
    using `sqrt(x) - sqrt(y) = (sqrt(x)^2 - sqrt(y)^2) / (sqrt(x) + sqrt(y))` 
    by (metis \<open>(sqrt x)\<^sup>2 - (sqrt y)\<^sup>2 = x - y\<close>)
qed