lemma odd_product_of_two_odds:
  fixes a b :: nat
  assumes "odd a" "odd b"
  shows "odd (a * b)"
proof -
  obtain k where "a = 2 * k + 1" using assms(1) by (metis odd_two_times_div_two_succ)
  obtain m where "b = 2 * m + 1" using assms(2) by (metis odd_two_times_div_two_succ)
  have "a * b = (2 * k + 1) * (2 * m + 1)" 
    using `a = 2 * k + 1` `b = 2 * m + 1` by simp
  then have "a * b = 2 * k * 2 * m + 2 * k + 2 * m + 1" 
    by (simp add: distrib_left)
  thus "odd (a * b)" 
    by auto
qed