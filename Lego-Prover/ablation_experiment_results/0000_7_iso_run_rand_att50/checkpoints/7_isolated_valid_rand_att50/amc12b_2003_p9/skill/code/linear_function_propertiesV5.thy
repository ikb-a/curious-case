lemma linear_function_properties:
  fixes a b :: real and f g :: "real \<Rightarrow> real"
  assumes h1: "\<forall>x. f x = a * x + b"
      and h2: "\<forall>x. g x = a * x + c"
  shows "f x - g y = a * (x - y) + (b - c)"
proof -
  have "f x - g y = (a * x + b) - (a * y + c)" 
    using assms by simp
  then show ?thesis by (auto simp: field_simps)
qed