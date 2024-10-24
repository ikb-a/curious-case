lemma square_expansion_with_c:
  fixes a b c :: real
  shows "(a - (b + c))^2 = a^2 - 2 * a * (b + c) + (b + c)^2"
proof -
  have "(b + c)^2 = b^2 + 2 * b * c + c^2" by sos
  thus ?thesis by (simp add: square_expansion_general)
qed