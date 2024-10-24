lemma multi_distrib_complex_general:
  fixes a b :: complex
  assumes "finite A" "finite B"
  shows "(\<Sum>i\<in>A. a * i) * (\<Sum>j\<in>B. b * j) = (\<Sum>i\<in>A. \<Sum>j\<in>B. (a * i) * (b * j))"
proof -
  have "(\<Sum>i\<in>A. a * i) * (\<Sum>j\<in>B. b * j) = (\<Sum>i\<in>A. (\<Sum>j\<in>B. (a * i) * (b * j)))"
    by (metis sum_product)
  then show ?thesis by simp
qed