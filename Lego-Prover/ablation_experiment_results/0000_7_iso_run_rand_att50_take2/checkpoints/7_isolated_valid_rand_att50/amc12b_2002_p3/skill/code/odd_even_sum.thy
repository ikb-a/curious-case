lemma odd_even_sum:
  fixes x y :: nat
  assumes "odd x" and "even y"
  shows "odd (x + y)"
proof -
  from assms(1) obtain m where "x = 2 * m + 1" by (cases x) auto
  from assms(2) obtain n where "y = 2 * n" by auto
  then have "x + y = (2 * m + 1) + (2 * n)" by (simp add: `x = 2 * m + 1`)
  also have "... = 2 * (m + n) + 1" by (simp add: algebra_simps)
  hence "odd (x + y)" by (metis assms(1) assms(2) odd_add)
  thus ?thesis by simp
qed