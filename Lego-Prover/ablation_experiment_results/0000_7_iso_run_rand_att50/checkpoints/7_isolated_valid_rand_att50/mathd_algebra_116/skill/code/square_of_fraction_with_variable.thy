lemma square_of_fraction_with_variable:
  fixes a b c d :: real
  assumes "b > 0" and "d > 0"
  shows "((a / b) + (c / d))^2 = (a^2 / b^2) + (c^2 / d^2) + (2 * (a * c) / (b * d))"
proof -
  have "((a / b) + (c / d))^2 = (a / b)^2 + (c / d)^2 + 2 * (a / b) * (c / d)" 
    by sos
  also have "... = (a^2 / b^2) + (c^2 / d^2) + (2 * (a * c) / (b * d))" 
    using square_of_fraction_general[of a b] square_of_fraction_general[of c d] 
    by (auto simp: field_simps)
  finally show ?thesis by simp
qed