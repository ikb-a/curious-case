lemma cancle_div_multi_dim:
  fixes x a b c :: "real list"
  assumes "x \<noteq> []" "\<forall>i. x ! i > 0" "\<forall>i. a ! i + b ! i / (x ! i) = c ! i"
  shows "\<forall>i. x ! i * a ! i + b ! i = c ! i * (x ! i)"
proof -
  have "\<forall>i. x ! i * (a ! i + b ! i / (x ! i)) = c ! i * (x ! i)"
    using assms(3) by auto
  then have "\<forall>i. x ! i * a ! i + x ! i * (b ! i / (x ! i)) = c ! i * (x ! i)"
    by (simp add: distrib_left)
  then show ?thesis
    using assms(2) by (smt (verit) assms(3) cancle_div_multi)
qed