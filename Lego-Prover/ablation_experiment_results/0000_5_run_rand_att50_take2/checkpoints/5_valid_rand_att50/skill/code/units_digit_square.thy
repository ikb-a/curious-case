lemma units_digit_square:
  fixes n :: nat
  shows "(n mod 10)^2 mod 10 = (n^2 mod 10)"
proof -
  let ?d = "n mod 10"
  have "n = 10 * (n div 10) + ?d" by auto
  then show "(?d)^2 mod 10 = (n^2 mod 10)"
  proof -
    have "n^2 = (10 * (n div 10) + ?d)^2"
      by (simp add: algebra_simps)
    also have "... = (10 * (n div 10))^2 + 2 * (10 * (n div 10)) * ?d + ?d^2"
      by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute power2_sum)
    also have "... = 100 * (n div 10)^2 + 20 * (n div 10) * ?d + ?d^2"
      by (simp add: algebra_simps)
    finally have "n^2 = 100 * (n div 10)^2 + 20 * (n div 10) * ?d + ?d^2" .
    then have "n^2 mod 10 = (?d^2 mod 10)"
      by (metis power_mod)
    moreover have "?d^2 mod 10 = (?d)^2 mod 10" by simp
    ultimately show "(?d)^2 mod 10 = (n^2 mod 10)" by simp
  qed
qed