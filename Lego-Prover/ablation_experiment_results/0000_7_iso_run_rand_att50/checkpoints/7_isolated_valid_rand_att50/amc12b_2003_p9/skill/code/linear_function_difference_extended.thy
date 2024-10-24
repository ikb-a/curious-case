lemma linear_function_difference_extended:
  fixes a b c d :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x - f y = a * (x - y)"
  shows "f z - f w = a * (z - w)"
  and "f z + d - (f y + d) = a * (z - y)"
proof -
  have "f z - f w = (a * z + b) - (a * w + b)"
    using assms(1) by simp
  then show "f z - f w = a * (z - w)" by (simp add: field_simps)
  have "f z + d - (f y + d) = (a * z + b + d) - (a * y + b + d)"
    using assms(1) by simp
  then show "f z + d - (f y + d) = a * (z - y)" by (simp add: field_simps)
qed