lemma linear_function_value_difference:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 30"
proof -
  have "f 6 - f 2 = (a * 6 + b) - (a * 2 + b)" using assms(1) by simp
  then have "f 6 - f 2 = a * 6 - a * 2" by (simp add: field_simps)
  then have "f 6 - f 2 = a * (6 - 2)" by (simp add: field_simps)
  from assms(2) have "a * (6 - 2) = 12" by (metis \<open>f 6 - f 2 = a * (6 - 2)\<close> dbl_simps(3))
  then have "a * 4 = 12" by simp
  then have "a = 3" by simp
  have "f 12 - f 2 = (a * 12 + b) - (a * 2 + b)" using assms(1) by simp
  then show ?thesis by (smt (verit) \<open>a = 3\<close>)
qed