lemma product_even_odd:
  fixes a b :: nat
  assumes "even a" "odd b"
  shows "even (a * b)"
proof -
  have "even a" using assms(1) by auto
  have "odd b" using assms(2) by auto
  obtain k where "a = 2 * k" using evenE[of a] by (metis assms(1))
  obtain m where "b = 2 * m + 1" using oddE[of b] by (metis assms(2))
  then have "a * b = (2 * k) * (2 * m + 1)" 
    using `a = 2 * k` by simp
  then have "a * b = 2 * k * 2 * m + 2 * k" by (simp add: distrib_left)
  then have "a * b = 2 * (k * (2 * m) + k)" by (simp add: algebra_simps)
  thus "even (a * b)" by auto
qed