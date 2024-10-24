lemma linear_function_slope:
  fixes a b :: real
  assumes "\<forall>x. f x = a * x + b" "x \<noteq> y"
  shows "f x - f y = a * (x - y)"
proof -
  have "f x = a * x + b" and "f y = a * y + b" using assms by auto
  then show ?thesis by (simp add: field_simps)
qed