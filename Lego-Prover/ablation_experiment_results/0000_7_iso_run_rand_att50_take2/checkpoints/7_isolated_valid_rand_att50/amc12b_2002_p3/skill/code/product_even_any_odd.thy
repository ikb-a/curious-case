lemma product_even_any_odd:
  fixes a :: nat
  fixes b :: nat
  assumes "a mod 2 = 0"
  shows "a * b mod 2 = 0"
proof -
  obtain m where "a = 2 * m" using assms by auto
  then have "a * b = 2 * m * b" by (simp add: `a = 2 * m`)
  hence "a * b mod 2 = 0" by auto
  thus ?thesis by simp
qed