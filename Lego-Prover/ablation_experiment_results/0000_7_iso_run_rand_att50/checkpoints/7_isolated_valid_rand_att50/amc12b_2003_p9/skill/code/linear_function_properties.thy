lemma linear_function_properties:
  fixes a b x y z :: real
  assumes "a \<noteq> 0"  
    and "\<forall> x. f x = a * x + b"
  shows "f x - f y = a * (x - y) \<and> f z - f y = a * (z - y)"
proof -
  have "f x - f y = (a * x + b) - (a * y + b)"
    using assms(2) by simp
  then have "f x - f y = a * (x - y)" by (auto simp: field_simps)
  have "f z - f y = (a * z + b) - (a * y + b)"
    using assms(2) by simp
  then have "f z - f y = a * (z - y)" by (auto simp: field_simps)
  thus ?thesis by (metis \<open>f x - f y = a * (x - y)\<close>)
qed