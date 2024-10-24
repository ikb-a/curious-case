lemma product_even_odd:
  fixes a b :: nat
  assumes "a mod 2 = 0" and "b mod 2 = 1"
  shows "a * b mod 2 = 0"
proof -
  obtain k where "a = 2 * k" using assms(1) by auto
  obtain m where "b = 2 * m + 1" using assms(2) by (metis add.commute bits_mod_0 less_one mod_eq_nat1E one_mod_two_eq_one verit_comp_simplify1(3) zero_neq_one)
  have "a * b = (2 * k) * (2 * m + 1)" by (metis `a = 2 * k` `b = 2 * m + 1`)
  then have "a * b = 2 * k * (2 * m + 1)" by simp
  hence "a * b = 2 * (k * (2 * m + 1))" by (metis mult.assoc)
  thus "a * b mod 2 = 0" by auto
qed