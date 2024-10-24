lemma square_root_product:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt (x * y) = sqrt x * sqrt y"
proof -
  have "sqrt (x * y) = sqrt (x * y * 1)" by simp
  also have "... = sqrt x * sqrt y" using assms by (metis calculation real_sqrt_mult)
  finally show ?thesis.
qed