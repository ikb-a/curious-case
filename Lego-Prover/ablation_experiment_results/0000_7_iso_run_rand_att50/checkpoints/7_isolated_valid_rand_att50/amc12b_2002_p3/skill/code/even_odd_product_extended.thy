lemma even_odd_product_extended:
  fixes a b :: nat
  assumes "even a" "odd b" "c > 0"
  shows "even (a * b * c)"
proof -
  obtain k where "a = 2 * k" using assms(1) by auto
  obtain m where "b = 2 * m + 1" using assms(2) by (metis odd_two_times_div_two_succ)
  have "a * b * c = (2 * k) * (2 * m + 1) * c" 
    using `a = 2 * k` `b = 2 * m + 1` by simp
  then have "a * b * c = 2 * k * (2 * m) * c + 2 * k * c" 
    by (auto simp: field_simps)
  hence "a * b * c = 2 * (k * (2 * m * c) + k * c)" 
    by (simp add: distrib_left)
  thus "even (a * b * c)" 
    by auto
qed