lemma last_digit_of_square:
  fixes a :: nat
  shows "(a mod 10)^2 mod 10 = (a^2 mod 10)"
proof -
  let ?x = "a mod 10"
  have "a = 10 * (a div 10) + ?x" by (simp)
  then have "a^2 = (10 * (a div 10) + ?x)^2" by simp
  also have "... = (10 * (a div 10))^2 + 2 * (10 * (a div 10)) * ?x + ?x^2" by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (a div 10)^2 + 20 * (a div 10) * ?x + ?x^2" by (simp add: algebra_simps)
  finally have "a^2 mod 10 = (100 * (a div 10)^2 + 20 * (a div 10) * ?x + ?x^2) mod 10" by simp
  also have "... = (?x^2) mod 10" by (metis calculation power_mod)
  moreover have "(?x)^2 mod 10 = (?x^2) mod 10" by simp
  ultimately show ?thesis by simp
qed