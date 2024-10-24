lemma linear_function_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes h0: "\<forall>x. f x = a * x + b"
  shows "f x - f y = a * (x - y)"
proof -
  have "f x - f y = (a * x + b) - (a * y + b)" 
    using h0 by simp
  then show ?thesis by (auto simp: field_simps)
qed