lemma mod_square:
  fixes x :: nat
  shows "(x^2) mod 10 = (x mod 10)^2 mod 10"
proof -
  let ?d = "x mod 10"
  have "x = 10 * (x div 10) + ?d" by auto
  then have "x^2 = (10 * (x div 10) + ?d)^2" by simp
  also have "... = (10 * (x div 10))^2 + 2 * (10 * (x div 10)) * ?d + ?d^2"
    by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
  also have "... = 100 * (x div 10)^2 + 20 * (x div 10) * ?d + ?d^2" by (simp add: power2_eq_square)
  finally have "x^2 = 100 * (x div 10)^2 + 20 * (x div 10) * ?d + ?d^2" .
  then have "x^2 mod 10 = (100 * (x div 10)^2 + 20 * (x div 10) * ?d + ?d^2) mod 10" by simp
  then have "x^2 mod 10 = (?d^2 mod 10)" by (metis power_mod)
  moreover have "?d^2 mod 10 = (?d)^2 mod 10" by simp
  ultimately show "(x^2) mod 10 = (x mod 10)^2 mod 10" by simp
qed