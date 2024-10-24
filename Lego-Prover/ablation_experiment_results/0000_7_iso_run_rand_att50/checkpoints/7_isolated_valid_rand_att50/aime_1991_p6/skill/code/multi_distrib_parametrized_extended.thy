lemma multi_distrib_parametrized_extended:
  fixes x y z w a b c d :: "'a :: comm_ring"
  shows "(x + y + a + b) * (z + w + c + d) = x * z + y * z + a * z + b * z + x * w + y * w + a * w + b * w + x * c + y * c + a * c + b * c + x * d + y * d + a * d + b * d"
proof -
  have "(x + y + a + b) * (z + w + c + d) = (x + y) * (z + w + c + d) + a * (z + w + c + d) + b * (z + w + c + d)"
    by (auto simp: field_simps)
  also have "... = (x + y) * (z + w) + (x + y) * c + (x + y) * d + a * (z + w) + a * c + a * d + b * (z + w) + b * c + b * d"
    by (simp add: distrib_left)
  also have "... = (x * z + y * z + x * w + y * w) + (x + y) * c + (x + y) * d + (a * z + b * z + a * w + b * w) + (a * c + a * d) + (b * c + b * d)"
    by (auto simp: field_simps)
  also have "... = x * z + y * z + a * z + b * z + x * w + y * w + a * w + b * w + (x + y) * c + (x + y) * d + a * c + b * c + a * d + b * d"
    by (simp add: field_simps)
  finally show ?thesis by (auto simp: field_simps)
qed