lemma distribution_of_sum:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "a * (c + d) + b * (c + d) = a * c + a * d + b * c + b * d" 
    by (auto simp: field_simps)
  then show ?thesis by (auto simp: field_simps)
qed