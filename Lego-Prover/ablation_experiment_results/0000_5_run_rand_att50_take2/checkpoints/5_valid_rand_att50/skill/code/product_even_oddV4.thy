lemma product_even_odd:
  fixes a b :: nat
  assumes "even a" "odd b"
  shows "even (a * b)"
proof -
  have "even a" using assms(1) by assumption
  hence "\<exists>k. a = 2 * k" by (metis evenE)
  then obtain k where "a = 2 * k" by auto
  have "odd b" using assms(2) by assumption
  hence "\<exists>m. b = 2 * m + 1" by (metis oddE)
  then obtain m where "b = 2 * m + 1" by auto
  have "a * b = (2 * k) * (2 * m + 1)" 
    by (metis `a = 2 * k` `b = 2 * m + 1`)
  then have "a * b = 2 * k * (2 * m) + 2 * k" 
    by (simp add: distrib_left)
  then have "a * b = 2 * (k * (2 * m) + k)" 
    by (simp add: ring_distribs)
  thus "even (a * b)" 
    by auto
qed