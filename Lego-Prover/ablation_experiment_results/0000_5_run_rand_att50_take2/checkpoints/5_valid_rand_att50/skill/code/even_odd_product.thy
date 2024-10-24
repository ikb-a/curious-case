lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  obtain k where "a = 2 * k" using assms(1) by (metis evenE)
  obtain m where "b = 2 * m + 1" using assms(2) by (metis oddE)
  have "a * b = (2 * k) * (2 * m + 1)" 
    by (metis `a = 2 * k` `b = 2 * m + 1`)
  then have "a * b = 2 * k * (2 * m + 1)" by simp
  thus "even (a * b)" 
    by auto
qed