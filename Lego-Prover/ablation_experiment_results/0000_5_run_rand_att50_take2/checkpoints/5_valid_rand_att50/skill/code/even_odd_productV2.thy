lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  obtain k where "a = 2 * k" using assms(1) by auto
  obtain m where "b = 2 * m + 1" using assms(2) by (cases b) auto
  then have "a * b = (2 * k) * (2 * m + 1)" using `a = 2 * k` by simp
  then have "a * b = 2 * k * (2 * m) + 2 * k" by simp
  then have "a * b = 2 * (k * (2 * m) + k)" by simp
  thus "even (a * b)" by auto
qed