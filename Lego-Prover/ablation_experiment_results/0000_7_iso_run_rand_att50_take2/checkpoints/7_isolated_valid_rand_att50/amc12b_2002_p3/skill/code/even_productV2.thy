lemma even_product:
  fixes x y :: nat
  assumes "even x" and "even y"
  shows "even (x * y)"
proof -
  from assms(1) obtain m where "x = 2 * m" by auto
  from assms(2) obtain n where "y = 2 * n" by auto
  then have "x * y = (2 * m) * (2 * n)" by (simp add: `x = 2 * m`)
  also have "... = 4 * (m * n)" by (simp add: algebra_simps)
  hence "even (x * y)" by (metis assms(1) even_mult_iff)
  thus ?thesis by simp
qed