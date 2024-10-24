lemma linear_function_difference_extended:
  fixes a b c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = a * (x - y)"
    and "f z - f y = a * (z - y)"
  shows "f (x + c) - f (y + c) = a * ((x + c) - (y + c))"
proof -
  have "f (x + c) - f (y + c) = (a * (x + c) + b) - (a * (y + c) + b)"
    using assms(1) by simp
  then show ?thesis by (auto simp: field_simps)
qed