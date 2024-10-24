lemma non_zero_property_extended:
  fixes a :: real
  assumes "a \<noteq> 0"
  shows "\<forall> b. b \<noteq> 0 \<longrightarrow> (1 / a) * a = 1"
proof -
  have "1 / a * a = 1" using assms by (simp add: field_simps)
  then show ?thesis by simp
qed