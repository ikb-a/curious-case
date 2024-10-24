lemma non_zero_property_extended:
  fixes a :: real and n :: nat
  assumes "a \<noteq> 0"
  shows "(\<forall>k. k < n \<longrightarrow> 1 / a * a = 1)"
proof -
  have "1 / a * a = 1" using assms by (simp)
  then show ?thesis by (metis)
qed