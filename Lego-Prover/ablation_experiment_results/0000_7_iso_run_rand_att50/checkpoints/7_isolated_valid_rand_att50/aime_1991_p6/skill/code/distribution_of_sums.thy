lemma distribution_of_sums:
  fixes a b c d :: "'a :: comm_ring"
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)" by (auto simp: field_simps)
  also have "... = a * c + a * d + b * c + b * d" by (simp add: distrib_left)
  finally show ?thesis by simp
qed