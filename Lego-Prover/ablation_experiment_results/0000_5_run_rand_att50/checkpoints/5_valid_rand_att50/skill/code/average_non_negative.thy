lemma average_non_negative:
  fixes f :: "nat \<Rightarrow> real" and n :: nat
  assumes "n > 0"
  shows "(\<Sum>k \<in> {0..n-1}. f k) / real n = (1 / real n) * (\<Sum>k \<in> {0..n-1}. f k)"
proof -
  have "(\<Sum>k \<in> {0..n-1}. f k) / real n = 1 / real n * (\<Sum>k \<in> {0..n-1}. f k)" by (simp)
  thus ?thesis by simp
qed