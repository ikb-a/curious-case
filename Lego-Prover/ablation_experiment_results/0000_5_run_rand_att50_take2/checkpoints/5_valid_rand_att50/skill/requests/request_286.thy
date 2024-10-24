lemma nested_sqrt_limit:
  fixes x :: real
  assumes "x >= 0"
  shows "(\<lambda>n. sqrt (x + u n)) = 9 \<longrightarrow> x = 72"