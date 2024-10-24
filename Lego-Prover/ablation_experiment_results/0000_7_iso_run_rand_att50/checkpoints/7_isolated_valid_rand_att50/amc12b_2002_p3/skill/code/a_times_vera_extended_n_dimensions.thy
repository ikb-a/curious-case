lemma a_times_vera_extended_n_dimensions:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a * (1 / a) = 1" 
     and "b * (1 / b) = 1"
     and "(\<forall>x. x > 0 \<longrightarrow> a * (1 / a) = 1) \<and> (\<forall>y. y > 0 \<longrightarrow> b * (1 / b) = 1)"
proof -
  have "a * (1 / a) = 1" by (metis assms(1) field_simps)
  moreover have "b * (1 / b) = 1" by (metis assms(2) field_simps)
  ultimately show "a * (1 / a) = 1" 
    and "b * (1 / b) = 1"
    and "(\<forall>x. x > 0 \<longrightarrow> a * (1 / a) = 1) \<and> (\<forall>y. y > 0 \<longrightarrow> b * (1 / b) = 1)"
    by auto
qed