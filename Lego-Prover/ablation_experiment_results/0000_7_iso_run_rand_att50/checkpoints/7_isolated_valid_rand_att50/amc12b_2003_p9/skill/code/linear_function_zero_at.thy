lemma linear_function_zero_at:
  fixes a b :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = a * x + b"
    and "f x0 = 0"
    and "f x1 = 0"
    and "x0 \<noteq> x1"
  shows "f (x0 + x1 - x) = 0"
proof -
  let ?x = "x0 + x1 - x"
  have "f ?x = a * ?x + b" using assms(1) by simp
  also have "... = a * (x0 + x1 - x) + b" by (simp add: field_simps)
  finally show ?thesis using assms(2) assms(3) by (smt (verit) \<open>f (x0 + x1 - x) = a * (x0 + x1 - x) + b\<close> add_right_imp_eq assms(1) assms(4) eq_add_iff2 mult_left_cancel)
qed