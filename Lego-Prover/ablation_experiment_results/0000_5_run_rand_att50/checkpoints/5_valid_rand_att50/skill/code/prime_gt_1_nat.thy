lemma prime_gt_1_nat:
  fixes p :: nat
  assumes "prime p"
  shows "p > 1"
proof -
  have "prime p \<longleftrightarrow> p > 1 \<and> (\<forall> d. d dvd p \<longrightarrow> d = 1 \<or> d = p)"
    by (simp add: prime_def_properties)
  then show ?thesis using assms by blast
qed