lemma general_recurrence_formula:
  fixes x :: "nat \<Rightarrow> int" and k :: nat
  assumes "\<And>(n::nat). (n \<ge> 5 \<Longrightarrow> x n = - x (n-5))"
  shows "x (5*k + n) = (-1)^k * x n"