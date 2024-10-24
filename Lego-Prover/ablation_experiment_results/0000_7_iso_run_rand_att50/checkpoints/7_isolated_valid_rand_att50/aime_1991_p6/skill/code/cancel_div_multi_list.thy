lemma cancel_div_multi_list:
  fixes x a b c :: "real list"
  assumes "x \<noteq> []" "\<forall>i. x ! i > 0" "\<forall>i. a ! i + b ! i / (x ! i) = c ! i"
  shows "\<forall>i. x ! i * a ! i + b ! i = c ! i * (x ! i)"
proof -
  have "\<forall>i. x ! i * (a ! i + b ! i / (x ! i)) = c ! i * (x ! i)"
    using assms(3) by auto
  then have "\<forall>i. x ! i * a ! i + b ! i = c ! i * (x ! i)"
    by (smt (verit) assms(2) assms(3) cancel_div_multi_real)
  thus ?thesis using assms(2) by (metis)
qed