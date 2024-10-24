lemma polynomial_identity_general:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a*c + a*d + b*c + b*d"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)" by (auto simp: field_simps)
  also have "... = a*c + a*d + b*c + b*d" by (smt (verit) distrib_left group_cancel.add1 mult.commute)
  finally show ?thesis by (auto simp: field_simps)
qed