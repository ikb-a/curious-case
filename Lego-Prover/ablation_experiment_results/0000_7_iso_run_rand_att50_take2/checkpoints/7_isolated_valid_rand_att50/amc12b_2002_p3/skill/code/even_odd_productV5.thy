lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  obtain m where "a = 2 * m" using assms(1) by auto
  obtain n where "b = 2 * n + 1" using assms(2) by (metis odd_two_times_div_two_succ)
  have "a * b = (2 * m) * (2 * n + 1)" by (simp add: `a = 2 * m` `b = 2 * n + 1`)
  also have "... = 2 * m * (2 * n + 1)" by (simp add: algebra_simps)
  finally have "a * b = 2 * (m * (2 * n + 1))" by (smt (verit) \<open>a = 2 * m\<close> \<open>b = 2 * n + 1\<close> ab_semigroup_mult_class.mult_ac(1))
  thus "even (a * b)" by auto
qed