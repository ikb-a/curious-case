lemma average_value_with_sum:
  fixes f :: "nat \<Rightarrow> real" and n :: nat
  assumes "n > 0"
  shows "(\<Sum>k=0..n-1. f k) / real n = (\<Sum>k = 0..n-1. f k) / (real_of_nat n)"
proof -
  have "(\<Sum>k = 0..n-1. f k) / real n = (\<Sum>k = 0..n-1. f k) / (real_of_nat n)"
    using assms by auto
  thus ?thesis by simp
qed