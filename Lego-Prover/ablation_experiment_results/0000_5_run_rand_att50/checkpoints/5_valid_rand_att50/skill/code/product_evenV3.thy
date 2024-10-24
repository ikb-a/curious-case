lemma product_even:
  assumes "even a" "even b"
  shows "even (a * b)"
proof -
  obtain m n where "a = 2 * m" and "b = 2 * n" 
    using assms by blast
  have "a * b = (2 * m) * (2 * n)" by (metis `a = 2 * m` `b = 2 * n` mult.commute)
  hence "a * b = 4 * (m * n)" by (simp add: mult.assoc)
  thus "even (a * b)" 
    by auto
qed