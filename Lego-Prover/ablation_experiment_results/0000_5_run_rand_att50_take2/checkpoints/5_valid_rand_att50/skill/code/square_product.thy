lemma square_product:
  fixes a b :: real
  shows "(a * b)^2 = a^2 * b^2"
proof -
  have "(a * b)^2 = a * b * a * b" by sos
  also have "... = (a * a) * (b * b)" by (simp add: mult.assoc)
  also have "... = a^2 * b^2" by (simp add: power2_eq_square)
  finally show ?thesis by simp
qed