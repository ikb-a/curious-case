lemma product_even_odd:
  fixes a b :: nat
  assumes "a mod 2 = 0" and "b mod 2 = 1"
  shows "a * b mod 2 = 0"
proof -
  obtain m where "a = 2 * m" using assms(1) by auto
  then have "a * b = (2 * m) * b" by (simp add: `a = 2 * m`)
  hence "a * b mod 2 = 0" by auto
  thus ?thesis by simp
qed