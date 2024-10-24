lemma product_of_sums:
  fixes a b c d :: real
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)" by sos
  also have "... = a * c + a * d + b * (c + d)" by (simp add: distrib_left)
  also have "... = a * c + a * d + b * c + b * d" by (simp add: distrib_left)
  finally show ?thesis .
qed