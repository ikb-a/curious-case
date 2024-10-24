lemma odd_even_product:
  fixes a b :: nat
  assumes "a mod 2 = 0" "b mod 2 = 1"
  shows "(a * b) mod 2 = 0"
proof -
  have "a mod 2 = 0" using assms(1) by simp
  have "b mod 2 = 1" using assms(2) by simp
  from `a mod 2 = 0` obtain k where "a = 2 * k"
    by auto
  from `b mod 2 = 1` obtain m where "b = 2 * m + 1"
    by (metis add.commute bits_mod_0 less_one mod_eq_nat1E one_mod_two_eq_one verit_comp_simplify1(3) zero_neq_one)
  have "a * b = (2 * k) * (2 * m + 1)" 
    using `a = 2 * k` `b = 2 * m + 1` by auto
  then have "a * b = 2 * k * (2 * m + 1)" 
    by (simp add: distrib_left)
  thus ?thesis 
    by auto
qed