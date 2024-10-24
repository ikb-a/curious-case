lemma limit_of_nested_radicals:
  fixes x :: real
  assumes "u (n + 1) = sqrt (x + u n)"
  shows "u n \<to> 9 \<Longrightarrow> x = 72"