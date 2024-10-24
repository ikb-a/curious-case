lemma simplify_square_root:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "sqrt(x * y) = sqrt x * sqrt y"
proof -
  have "sqrt(x * y) * sqrt(x * y) = x * y" by (metis abs_of_nonneg assms(1) assms(2) mult_nonneg_nonneg real_sqrt_mult_self)
  also have "... = (sqrt x * sqrt x) * (sqrt y * sqrt y)" using assms
    by auto
  also have "... = (sqrt x * sqrt y) * (sqrt x * sqrt y)" by (auto simp: field_simps)
  finally have "sqrt(x * y) * sqrt(x * y) = (sqrt x * sqrt y) * (sqrt x * sqrt y)" .
  then show ?thesis by (metis real_sqrt_mult)
qed