lemma sum_of_naturals:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<Sum> i = 1..n. i) = n * (n + 1) div 2"
proof -
  have "(\<Sum> i = 1..n. i) = n * (n + 1) div 2" by (induction n) (auto)
  then show ?thesis by simp
qed