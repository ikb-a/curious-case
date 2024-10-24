lemma even_odd_product:
  fixes a b :: nat
  assumes "even a" and "odd b"
  shows "even (a * b)"
proof -
  from assms(1) obtain m where "a = 2 * m" by auto
  from assms(2) obtain n where "b = 2 * n + 1" by (cases b) auto
  then have "a * b = (2 * m) * (2 * n + 1)" by (simp add: `a = 2 * m`)
  also have "... = 2 * m * (2 * n + 1)" by (simp add: algebra_simps)
  then have "a * b = 2 * (m * (2 * n + 1))" by (smt (verit) \<open>a = 2 * m\<close> \<open>b = 2 * n + 1\<close> ab_semigroup_mult_class.mult_ac(1))
  hence "even (a * b)" by auto
  thus ?thesis by simp
qed