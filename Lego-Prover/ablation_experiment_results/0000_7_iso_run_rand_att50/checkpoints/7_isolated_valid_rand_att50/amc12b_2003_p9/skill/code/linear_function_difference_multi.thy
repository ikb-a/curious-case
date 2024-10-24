lemma linear_function_difference_multi:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = a * (x - y)"
  shows "f z - f y = a * (z - y)"
  and "\<forall> z' y'. f z' - f y' = a * (z' - y')"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(1) by simp
  then show "f z - f y = a * (z - y)" by (auto simp: field_simps)
  have "\<forall> z' y'. f z' - f y' = (a * z' + b) - (a * y' + b)"
    using assms(1) by simp
  then show "\<forall> z' y'. f z' - f y' = a * (z' - y')" by (auto simp: field_simps)
qed