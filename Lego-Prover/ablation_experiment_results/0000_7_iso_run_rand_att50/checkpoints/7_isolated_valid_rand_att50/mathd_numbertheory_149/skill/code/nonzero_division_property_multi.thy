lemma nonzero_division_property_multi:
  fixes a :: "real set" 
  assumes "\<forall> x. x \<in> a \<longrightarrow> x \<noteq> 0"
  shows "\<forall> x \<in> a. (1 / x) * x = 1"
proof -
  have "\<forall> x. x \<in> a \<longrightarrow> 1 / x * x = 1" 
  proof (rule allI, rule impI)
    fix x
    assume "x \<in> a" 
    then show "1 / x * x = 1" using nonzero_division_property[of x] by (simp add: assms)
  qed
  thus ?thesis by auto
qed