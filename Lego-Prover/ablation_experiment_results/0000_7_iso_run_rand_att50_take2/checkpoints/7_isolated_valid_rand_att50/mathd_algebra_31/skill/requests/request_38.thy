lemma induction_on_nested_sqrt:
  fixes u :: "nat \<Rightarrow> real"
  assumes "u 0 = a" "u (n + 1) = sqrt (x + u n)"
  shows "\<forall>n. u n = sqrt (x + u (n - 1))"