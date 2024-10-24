lemma division_property_for_dimensions:
  fixes x a b c :: "real list"
  assumes "length x = length a" "length x = length b" "length x = length c"
    and "\<forall>i. x ! i > 0 \<longrightarrow> (a ! i + b ! i / x ! i = c ! i)"
  shows "\<forall>i. x ! i > 0 \<longrightarrow> (a ! i * x ! i + b ! i = c ! i * x ! i)"
proof -
  have "(\<forall>i. x ! i > 0 \<longrightarrow> (a ! i + b ! i / x ! i = c ! i))" using assms(4) by auto
  hence "(\<forall>i. x ! i > 0 \<longrightarrow> (a ! i * x ! i + b ! i = c ! i * x ! i))"
    by (metis division_property_for_positive) 
  thus ?thesis by auto
qed