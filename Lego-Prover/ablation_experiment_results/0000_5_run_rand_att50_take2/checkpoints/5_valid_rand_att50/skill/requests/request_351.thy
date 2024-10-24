lemma sqrt_limit:
  fixes x :: real
  assumes "x > 0"
  shows "sqrt x = limit (u n) (at_top) \<longleftrightarrow> (\<forall>n. u (n + 1) = sqrt (x + u n))"