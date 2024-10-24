lemma sum_distribution:
  fixes a b c d :: "'a :: comm_ring"
  assumes "n > 0"
  shows "(\<Sum>i\<in>{1..n}. (a + b) * (c + d)) = 
         (\<Sum>i\<in>{1..n}. (a * (c + d) + b * (c + d)))"
proof -
  have "\<forall>i. (a + b) * (c + d) = a * (c + d) + b * (c + d)"
    by (auto simp: field_simps)
  then show ?thesis by (simp add: sum_constant)
qed