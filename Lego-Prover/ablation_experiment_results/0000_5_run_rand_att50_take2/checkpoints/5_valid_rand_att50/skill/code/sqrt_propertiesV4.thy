lemma sqrt_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x) + sqrt(y) = sqrt(x + y + 2*sqrt(x*y))"
proof -
  have "sqrt(x) + sqrt(y) \<ge> 0" using assms by auto
  then have "(sqrt(x) + sqrt(y))^2 = x + y + 2*sqrt(x)*sqrt(y)"
    by (smt (verit) assms(1) assms(2) power2_sum real_sqrt_pow2)
  also have "... = x + y + 2*sqrt(x*y)" 
    by (metis calculation is_num_normalize(1) mult.commute mult.left_commute real_sqrt_mult)
  finally have "sqrt(x + y + 2*sqrt(x*y)) = sqrt((sqrt(x) + sqrt(y))^2)"
    by auto
  then show ?thesis 
    using `sqrt(x) + sqrt(y) \<ge> 0` by auto
qed