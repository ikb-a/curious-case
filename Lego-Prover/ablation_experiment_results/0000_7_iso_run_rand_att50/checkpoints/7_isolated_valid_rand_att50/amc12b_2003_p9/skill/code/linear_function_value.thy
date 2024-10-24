lemma linear_function_value:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x = a * x + b"
  shows "f (y + z) = f y + f z - b"
proof -
  have "f (y + z) = a * (y + z) + b" using assms(1) by simp
  also have "... = (a * y + b) + (a * z + b) - b" using assms(2) by (auto simp: field_simps)
  finally show ?thesis by (metis \<open>a * (y + z) + b = a * y + b + (a * z + b) - b\<close> \<open>f (y + z) = a * (y + z) + b\<close> assms(1) mult_delta_right)
qed