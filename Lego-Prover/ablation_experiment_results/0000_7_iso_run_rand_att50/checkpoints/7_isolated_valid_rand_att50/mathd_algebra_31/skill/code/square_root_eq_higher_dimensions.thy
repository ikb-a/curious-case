lemma square_root_eq_higher_dimensions:
  fixes a b :: "real set"
  assumes "a = b"
  shows "(\<forall>x. x \<in> a \<longrightarrow> x \<ge> 0) \<Longrightarrow> (\<forall>x. x \<in> b \<longrightarrow> x \<ge> 0) \<Longrightarrow> 
         (\<forall>x. x \<in> a \<longrightarrow> sqrt x = sqrt x)"
proof -
  have "(\<forall>x. x \<in> a \<longrightarrow> sqrt x = sqrt x)" by simp
  then show ?thesis by auto
qed