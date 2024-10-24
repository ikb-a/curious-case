lemma multi_distrib_complex_general_n:
  fixes a b c d e f :: "complex"
  shows "(\<Sum>i\<in>A. (a + b) * (c + d)) + (\<Sum>i\<in>B. (e + f) * (c + d)) = ((\<Sum>i\<in>A. a + b) + (\<Sum>i\<in>B. e + f)) * (c + d)"
proof -
  have "(\<Sum>i\<in>A. (a + b) * (c + d)) = (\<Sum>i\<in>A. a + b) * (c + d)" by (simp add: sum_distrib_left)
  also have "(\<Sum>i\<in>B. (e + f) * (c + d)) = (\<Sum>i\<in>B. e + f) * (c + d)" by (simp add: sum_distrib_left)
  then have "(\<Sum>i\<in>A. (a + b) * (c + d)) + (\<Sum>i\<in>B. (e + f) * (c + d)) = ((\<Sum>i\<in>A. a + b) + (\<Sum>i\<in>B. e + f)) * (c + d)"
    by (simp add: field_simps)
  thus ?thesis by simp
qed