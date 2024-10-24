lemma recurrence_relation_property:
  fixes x :: "nat \<Rightarrow> int"
  assumes "\<And>(n::nat). ((n\<ge>5) \<Longrightarrow> (x n = x (n-1) - x (n-2) + x (n-3) - x (n-4)))"
  shows "\<And>(n::nat). (n \<ge> 5 \<Longrightarrow> x n = - x (n-5))"