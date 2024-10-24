lemma floor_sum_expression:
  fixes r :: real
  assumes "(\<Sum> k \<in>{19::nat..<92}. floor (r + k / 100)) = 546"
  shows "\<exists>n x. n = floor r \<and> x = card {k. 19 \<le> k \<and> k < 92 \<and> r + k / 100 \<ge> n + 1} \<and> 73 * n + x = 546"