lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  from assms(1) obtain m where "a = 2 * m" by auto
  from assms(2) obtain n where "b = 2 * n + 1" by (cases b) auto
  have "a * b = (2 * m) * (2 * n + 1)" by (metis `a = 2 * m` `b = 2 * n + 1`)
  also have "... = 2 * m * (2 * n + 1)" by (simp add: algebra_simps)
  also have "... = 2 * (m * (2 * n + 1))" by (simp add: algebra_simps)
  thus "even (a * b)" by (metis assms(1) even_mult_iff)
qed