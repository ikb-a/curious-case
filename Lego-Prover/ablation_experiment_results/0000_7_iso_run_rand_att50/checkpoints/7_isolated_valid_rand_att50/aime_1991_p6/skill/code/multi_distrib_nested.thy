lemma multi_distrib_nested:
  fixes a b c d e f g h :: "'a :: comm_ring"
  shows "((a + b) * (c + d)) * ((e + f) * (g + h)) = (a * c + b * c + a * d + b * d) * (e * g + f * g + e * h + f * h)"
proof -
  have "((a + b) * (c + d)) * ((e + f) * (g + h)) = (a * c + b * c + a * d + b * d) * (e * g + f * g + e * h + f * h)"
    using multi_distrib_general by (auto simp: field_simps)
  then show ?thesis by simp
qed