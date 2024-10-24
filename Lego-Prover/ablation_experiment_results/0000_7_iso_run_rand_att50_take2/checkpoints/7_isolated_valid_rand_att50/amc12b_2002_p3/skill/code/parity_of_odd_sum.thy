lemma parity_of_odd_sum:
  fixes x y :: nat
  assumes "odd x" and "odd y"
  shows "even (x + y)"
proof -
  from assms(1) obtain m where "x = 2 * m + 1" by (cases x) auto
  from assms(2) obtain n where "y = 2 * n + 1" by (cases y) auto
  hence "x + y = (2 * m + 1) + (2 * n + 1)" by (metis \<open>x = 2 * m + 1\<close>)
  also have "... = 2 * (m + n + 1)" by (simp add: algebra_simps)
  thus ?thesis by (metis assms(1) assms(2) odd_even_add)
qed