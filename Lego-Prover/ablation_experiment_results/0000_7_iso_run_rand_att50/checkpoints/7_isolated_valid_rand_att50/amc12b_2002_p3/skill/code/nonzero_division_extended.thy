lemma nonzero_division_extended:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "(\<forall>b. (b / a) * a = b) \<and> (\<forall>c. (c / a) * a = c)"
proof -
  have "(\<forall>b. (b / a) * a = b)" using nonzero_division_general assms by auto
  have "(\<forall>c. (c / a) * a = c)" using nonzero_division_general assms by auto
  thus ?thesis by auto
qed