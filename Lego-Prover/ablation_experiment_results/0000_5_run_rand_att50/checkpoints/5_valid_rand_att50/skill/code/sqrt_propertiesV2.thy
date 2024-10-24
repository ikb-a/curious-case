lemma sqrt_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x * y) = sqrt(x) * sqrt(y)"
proof -
  have "sqrt(x * y) = sqrt(x) * sqrt(y)" 
    using assms by (metis real_sqrt_mult)
  thus ?thesis by auto
qed