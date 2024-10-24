lemma sum_integer_partitions:
  fixes n :: nat
  assumes "n = a + b"
  shows "a <= n \<and> b <= n"
proof -
  have "a + b = n" using assms by simp
  hence "a <= a + b" by (simp add: le_add2)
  hence "a <= n" by (metis add_leE assms order_refl)
  moreover have "b <= a + b" using assms by (simp add: le_add2)
  hence "b <= n" by (metis add_leE assms le_refl)
  ultimately show ?thesis by simp
qed