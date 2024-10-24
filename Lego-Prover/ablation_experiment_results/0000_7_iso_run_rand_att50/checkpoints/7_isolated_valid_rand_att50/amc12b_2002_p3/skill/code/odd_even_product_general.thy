lemma odd_even_product_general:
  fixes a b :: nat
  assumes "odd a" "even b"
  shows "even (a * b)"
proof -
  obtain k where "b = 2 * k" using assms(2) by auto
  obtain m where "a = 2 * m + 1" using assms(1) by (metis odd_two_times_div_two_succ)
  have "a * b = (2 * m + 1) * (2 * k)" 
    using `a = 2 * m + 1` `b = 2 * k` by simp
  then have "a * b = 2 * m * (2 * k) + 2 * k" 
    by (simp add: distrib_left)
  hence "a * b = 2 * (m * (2 * k) + k)" 
    by (simp add: distrib_left)
  thus "even (a * b)" 
    by auto
qed