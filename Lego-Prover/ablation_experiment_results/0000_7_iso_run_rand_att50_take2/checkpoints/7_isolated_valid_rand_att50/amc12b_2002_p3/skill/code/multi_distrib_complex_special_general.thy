lemma multi_distrib_complex_special_general:
  fixes a b c d :: complex
  assumes "finite A" and "finite B"
  shows "(\<Sum>i\<in>A. (a + b) * (c + d)) = (\<Sum>i\<in>A. (a * c + a * d + b * c + b * d))"
proof -
  have "(\<Sum>i\<in>A. (a + b) * (c + d)) = (\<Sum>i\<in>A. (a * c + a * d + b * c + b * d))"
    by (auto simp: field_simps)
  then show ?thesis by simp
qed