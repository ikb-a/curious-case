lemma linear_function_relation:
  fixes a b x y :: real
  assumes "f x = a * x + b" 
    and "f y = a * y + b"
  shows "f x - f y = a * (x - y)"
proof -
  have "f x - f y = (a * x + b) - (a * y + b)"
    using assms by simp
  then show ?thesis by (simp add: field_simps)
qed