lemma sum_integer_partitions:
  fixes n :: nat
  assumes "n = a + b"
  shows "a <= n \<and> b <= n"
proof -
  have "a + b = n" using assms by simp
  hence "a <= a + b" by auto
  moreover have "b <= a + b" by auto
  ultimately show "a <= n \<and> b <= n" 
    by (metis add_leE assms order_refl)
qed