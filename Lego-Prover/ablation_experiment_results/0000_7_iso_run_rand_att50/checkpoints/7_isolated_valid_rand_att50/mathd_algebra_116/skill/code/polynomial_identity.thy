lemma polynomial_identity:
  fixes a b c :: complex
  shows "(a + b) * (a + c) = a^2 + (b + c) * a + b * c"
proof -
  have "(a + b) * (a + c) = a * (a + c) + b * (a + c)" by (auto simp: field_simps)
  also have "... = a^2 + c * a + b * a + b * c" by (smt (verit) distrib_left group_cancel.add1 mult.commute power2_eq_square)
  finally show ?thesis by (auto simp: field_simps)
qed