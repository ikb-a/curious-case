lemma distributive_property_multiple:
  fixes a b c d :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = (a + b) * c + (a + b) * d" by (auto simp: field_simps)
  also have "... = a * c + b * c + a * d + b * d" by (simp add: distributive_property_generalized)
  finally show ?thesis by simp
qed