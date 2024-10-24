lemma sqrt_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x * y) = sqrt(x) * sqrt(y)"
proof -
  have "x * y \<ge> 0" 
    using assms by auto
  then have "sqrt(x * y) = sqrt(x) * sqrt(y)"
    using assms real_sqrt_mult by auto
  thus ?thesis by auto
qed