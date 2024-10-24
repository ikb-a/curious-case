lemma sqrt_combined_limit:
  fixes x y :: real
  assumes "9 = sqrt(x + y)" and "x = 72"
  shows "y = 9"
proof -
  from assms(1) have "x + y = 81" by (metis sqrt_sum_limit)
  with assms(2) show "y = 9" by auto
qed