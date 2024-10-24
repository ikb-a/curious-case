lemma average_of_sum:
  fixes total :: real and count :: nat
  assumes "count > 0"
  shows "(\<Sum> k \<in> {0..count-1}. f k) / real count = (1 / real count) * (\<Sum> k \<in> {0..count-1}. f k)"
  using assms by (simp add: divide_simps)