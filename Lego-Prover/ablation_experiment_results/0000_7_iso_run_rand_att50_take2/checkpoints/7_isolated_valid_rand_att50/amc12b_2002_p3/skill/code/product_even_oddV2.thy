lemma product_even_odd:
  fixes a b :: nat
  assumes "a mod 2 = 0" and "b mod 2 = 1"
  shows "a * b mod 2 = 0"
proof -
  obtain m where "a = 2 * m" using assms(1) by auto
  obtain n where "b = 2 * n + 1" using assms(2) by (metis add.commute bits_mod_0 less_one mod_eq_nat1E one_mod_two_eq_one verit_comp_simplify1(3) zero_neq_one)
  then have "a * b = (2 * m) * (2 * n + 1)" by (simp add: `a = 2 * m`)
  also have "... = 2 * m * (2 * n + 1)" by (simp add: algebra_simps)
  then have "a * b = 2 * (m * (2 * n + 1))" by (metis \<open>a = 2 * m\<close> \<open>b = 2 * n + 1\<close> mult.commute mult.left_commute)
  hence "a * b mod 2 = 0" by (simp add: mod_0)
  thus ?thesis by simp
qed