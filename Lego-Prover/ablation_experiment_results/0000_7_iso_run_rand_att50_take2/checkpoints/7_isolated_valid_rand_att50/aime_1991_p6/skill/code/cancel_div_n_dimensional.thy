lemma cancel_div_n_dimensional:
  fixes x :: real
  fixes a b c :: "real list"  
  assumes "x > 0" "length a = n" "length b = n" "length c = n"
  shows "(\<forall>i. a ! i + b ! i / x = c ! i) \<Longrightarrow> (\<forall>i. a ! i * x + b ! i = c ! i * x)"
proof -
  assume "(\<forall>i. a ! i + b ! i / x = c ! i)"
  have "\<forall>i. x * (a ! i + b ! i / x) = c ! i * x" using `\<forall>i. a ! i + b ! i / x = c ! i` by auto
  then have "\<forall>i. x * a ! i + b ! i = c ! i * x" by (smt (verit) \<open>\<forall>i. a ! i + b ! i / x = c ! i\<close> assms(1) cancel_div_general mult.commute of_nat_0_less_iff zero_less_one)
  then show "\<forall>i. a ! i * x + b ! i = c ! i * x" by (simp add: mult.commute)
qed