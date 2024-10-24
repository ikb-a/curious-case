lemma linear_function_difference_general:
  fixes a b z x y :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> t. f t = a * t + b"
    and "f x - f y = a * (x - y)"
  shows "f z - f y = a * (z - y)"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(1) by simp
  then show ?thesis by (auto simp: field_simps)
qed