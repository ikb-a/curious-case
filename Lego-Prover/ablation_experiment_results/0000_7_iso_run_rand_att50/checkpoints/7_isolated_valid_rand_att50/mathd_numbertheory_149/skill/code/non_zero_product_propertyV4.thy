lemma non_zero_product_property:
  fixes A :: "real list"
  assumes "\<forall>i. A ! i \<noteq> 0"
  shows "\<forall> i. (A ! i) * (1 / (A ! i)) = 1"
proof -
  show ?thesis
  proof (rule allI)
    fix i
    have "(A ! i) * (1 / (A ! i)) = 1" using assms by (simp add: field_simps)
    thus "A ! i * (1 / (A ! i)) = 1" by simp
  qed
qed