theorem linear_function_property:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f (x1) - f (x2) = k"
  shows "f (x3) - f (x2) = k' \<Longrightarrow> k' = a * (x3 - x2)"
  using assms
proof -
  let ?diff = "f (x1) - f (x2)"
  have "?diff = (a * x1 + b) - (a * x2 + b)" using assms(1) by simp
  then have "?diff = a * (x1 - x2)" by (auto simp: field_simps)
  assume "f (x3) - f (x2) = k'"
  hence "f (x3) - f (x2) = (a * x3 + b) - (a * x2 + b)" using assms(1) by simp
  thus "k' = a * (x3 - x2)" by (smt (verit) \<open>f x3 - f x2 = k'\<close> add_implies_diff diff_add_eq_diff_diff_swap right_diff_distrib')
qed