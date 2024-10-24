lemma polynomial_identity_extended:
  fixes a b c :: complex
  shows "(a + b + c)^2 = a^2 + b^2 + c^2 + 2*a*b + 2*a*c + 2*b*c"
proof -
  have "(a + b + c)^2 = (a + (b + c))^2"
    by (auto simp: field_simps)
  also have "... = a^2 + 2*a*(b + c) + (b + c)^2" by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute is_num_normalize(1) power2_sum)
  also have "... = a^2 + 2*a*b + 2*a*c + (b^2 + 2*b*c + c^2)" by (smt (z3) ab_semigroup_add_class.add_ac(1) add.assoc add.commute add.left_commute distrib_left is_num_normalize(1) power2_sum ring_class.ring_distribs(1))
  finally show ?thesis by simp
qed