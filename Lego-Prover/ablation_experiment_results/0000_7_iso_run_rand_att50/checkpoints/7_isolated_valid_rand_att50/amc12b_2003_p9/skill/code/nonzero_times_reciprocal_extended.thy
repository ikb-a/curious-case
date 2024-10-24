lemma nonzero_times_reciprocal_extended:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1 \<and> b * (1 / b) = 1"
proof -
  have "a * (1 / a) = 1" using assms(1) by (simp add: assms(1))
  moreover have "b * (1 / b) = 1" using assms(2) by (simp add: assms(2))
  ultimately show ?thesis by simp
qed