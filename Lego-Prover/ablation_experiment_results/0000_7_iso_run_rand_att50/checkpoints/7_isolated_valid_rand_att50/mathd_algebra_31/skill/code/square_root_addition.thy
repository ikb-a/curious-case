lemma square_root_addition:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt (x + y) <= sqrt x + sqrt y"
proof -
  have "sqrt (x + y) ^ 2 = x + y" using assms by auto
  also have "... <= (sqrt x + sqrt y) ^ 2"
    by (metis assms(1) assms(2) sqrt_add_le_add_sqrt sqrt_le_D)
  finally show ?thesis by (metis assms(1) assms(2) sqrt_add_le_add_sqrt)
qed