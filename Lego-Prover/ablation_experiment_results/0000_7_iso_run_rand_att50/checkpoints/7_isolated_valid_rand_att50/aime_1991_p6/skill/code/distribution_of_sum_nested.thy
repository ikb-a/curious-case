lemma distribution_of_sum_nested:
  fixes a b c d e f g h i j :: "'a :: comm_ring"
  shows "(a + b) * ((c + d) * (e + f)) + (g + h) * (i + j) = (a * (c * e + c * f + d * e + d * f) + b * (c * e + c * f + d * e + d * f)) + (g * (i + j) + h * (i + j))"
proof -
  have "((c + d) * (e + f)) = (c * e + c * f + d * e + d * f)" by (simp add: distrib_left distrib_right)
  moreover have "(g + h) * (i + j) = g * i + g * j + h * i + h * j" by (simp add: distrib_left distrib_right)
  ultimately show ?thesis by (auto simp: field_simps)
qed