lemma cancel_div_multi:
  fixes x :: real
  fixes a b c :: "real list"
  assumes "x > 0" "length a = length b" "length a = length c"
  shows "(\<forall>i. a!i + b!i / x = c!i) \<Longrightarrow> (\<forall>i. a!i * x + b!i = c!i * x)"
proof -
  assume "(\<forall>i. a!i + b!i / x = c!i)"
  hence "\<forall>i. x * (a!i + b!i / x) = c!i * x" by (simp add: assms(1))
  hence "\<forall>i. x * a!i + x * (b!i / x) = c!i * x" by (simp add: distrib_left)
  thus ?thesis by (smt (verit) \<open>\<forall>i. a ! i + b ! i / x = c ! i\<close> add_divide_eq_iff assms(1) nonzero_eq_divide_eq of_nat_0 of_nat_less_0_iff)
qed