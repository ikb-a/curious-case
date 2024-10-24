lemma product_of_sums:
  fixes a b c d :: real
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)" by (simp add: algebra_simps)
  also have "... = a * c + a * d + b * (c + d)" by (simp add: algebra_simps)
  also have "... = a * c + a * d + b * c + b * d" by (simp add: algebra_simps)
  finally show ?thesis .
qed