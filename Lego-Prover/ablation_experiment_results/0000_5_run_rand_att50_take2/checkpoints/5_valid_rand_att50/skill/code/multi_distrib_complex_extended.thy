lemma multi_distrib_complex_extended:
  fixes a b c d e f :: complex
  shows "(a + b) * (c + d + e + f) = a * c + a * d + a * e + a * f + b * c + b * d + b * e + b * f"
proof -
  have "(a + b) * (c + (d + (e + f))) = (a + b) * (c + d + e + f)"
    by simp
  also have "... = (a + b) * c + (a + b) * (d + e + f)" by (simp add: distrib_left)
  also have "... = (a * c + b * c) + (a * (d + e + f) + b * (d + e + f))" by (auto simp: field_simps)
  also have "... = a * c + b * c + (a * d + a * e + a * f + b * d + b * e + b * f)"
    by (metis (no_types, lifting) add.assoc add.left_neutral distrib_left)
  finally show ?thesis by (auto simp: field_simps)
qed