lemma product_even_odd:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  have "even a" using assms(1) by auto
  then obtain k where "a = 2 * k" by (metis evenE)
  have "odd b" using assms(2) by auto
  then obtain m where "b = 2 * m + 1" by (metis oddE)
  have "a * b = (2 * k) * (2 * m + 1)" 
    using `a = 2 * k` `b = 2 * m + 1` by simp
  then have "a * b = 2 * (k * (2 * m + 1))" 
    by (simp add: algebra_simps)
  thus "even (a * b)" 
    by auto
qed