lemma linear_function_difference_generalized:
  fixes a b k :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "k > 0"
  shows "f (x + k) - f x = a * k"
proof -
  have "f (x + k) - f x = (a * (x + k) + b) - (a * x + b)"
    using assms(1) by simp
  then show ?thesis by (auto simp: field_simps)
qed