lemma non_zero_property_in_multiple_dimensions:
  fixes A :: "real list"
  assumes "\<forall>i. A ! i \<noteq> 0"
  shows "\<forall> i. (1 / (A ! i)) * (A ! i) = 1"
proof -
  show ?thesis
  proof (rule allI)
    fix i
    have "(1 / (A ! i)) * (A ! i) = 1" using assms by (simp add: field_simps)
    thus "1 / (A ! i) * (A ! i) = 1" by simp
  qed
qed