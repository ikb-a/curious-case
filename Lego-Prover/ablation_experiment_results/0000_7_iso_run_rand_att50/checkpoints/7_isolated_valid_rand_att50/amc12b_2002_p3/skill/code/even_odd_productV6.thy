lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" "odd b"
  shows "even (a * b)"
proof -
  obtain k where "a = 2 * k" using assms(1) by auto
  obtain m where "b = 2 * m + 1" using assms(2) by (metis odd_two_times_div_two_succ)
  have "a * b = (2 * k) * (2 * m + 1)" 
    using `a = 2 * k` `b = 2 * m + 1` by simp
  then have "a * b = 2 * k * (2 * m) + 2 * k" 
    by (simp add: distrib_left)
  hence "a * b = 2 * (k * (2 * m) + k)" 
    by (simp add: distrib_left)
  thus "even (a * b)" 
    by auto
qed