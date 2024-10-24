lemma multi_distrib_complex_ext_generalized:
  fixes a b c d e f :: "'a :: comm_ring"
  shows "(a + b) * (c + d + e + f) = a * c + a * d + a * e + a * f + b * c + b * d + b * e + b * f"
proof -
  have "((a + b) * (c + d + e + f)) = (a * c + b * c + a * d + b * d + a * e + b * e + a * f + b * f)" 
    using distrib_left by (auto simp: field_simps)
  thus ?thesis by simp
qed