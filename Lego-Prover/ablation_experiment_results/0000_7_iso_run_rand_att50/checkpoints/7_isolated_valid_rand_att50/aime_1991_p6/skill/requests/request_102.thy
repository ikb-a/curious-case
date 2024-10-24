lemma bounds_on_r:
  assumes "(\<Sum> k \<in> {19::nat..<92}. floor (r + k / 100)) = 546"
  shows "7.43 \<le> r \<and> r < 8.43"