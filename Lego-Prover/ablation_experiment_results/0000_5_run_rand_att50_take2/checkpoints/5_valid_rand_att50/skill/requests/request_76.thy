lemma limit_of_nested_sqrt:
  fixes u :: "nat ⇒ real"
  assumes "∀n. u (n + 1) = sqrt (x + u n)"
  shows "filterlim u at_top (nhds 9)"
  using assms by (induction n) (auto)