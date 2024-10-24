lemma distribution_of_sum_parameterized:
  fixes a b c d e f g h :: "'a :: comm_ring"
  assumes "m + n = a" and "p + q = b"
  shows "(a * c + b * d) = (m * c + n * c + p * d + q * d)"
proof -
  have "a * c + b * d = (m + n) * c + (p + q) * d" using assms by simp
  also have "... = m * c + n * c + p * d + q * d" by (auto simp: field_simps)
  finally show ?thesis by simp
qed