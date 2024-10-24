lemma square_expansion_with_product:
  fixes a b c d :: real
  assumes "a >= 0" "b >= 0" "c >= 0" "d >= 0"
  shows "((a - b) * (c - d))^2 = (a^2 - 2*a*b + b^2) * (c^2 - 2*c*d + d^2)"
proof -
  have "((a - b) * (c - d))^2 = (a - b)^2 * (c - d)^2" by sos
  also have "... = (a^2 - 2*a*b + b^2) * (c^2 - 2*c*d + d^2)" 
    by sos
  finally show ?thesis .
qed