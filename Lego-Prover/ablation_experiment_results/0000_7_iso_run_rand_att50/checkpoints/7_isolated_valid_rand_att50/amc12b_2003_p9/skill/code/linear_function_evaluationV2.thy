lemma linear_function_evaluation:
  fixes a b x y z :: real
  assumes "f x = a * x + b" 
    and "f y = a * y + b"
    and "f z = a * z + b"
  shows "f z - f y = a * (z - y)"
proof -
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(3, 2) by simp
  then show ?thesis by (simp add: field_simps)
qed