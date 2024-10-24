lemma product_nonzero:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a * b \<noteq> 0"
proof -
  have "a * b = 0 \<Longrightarrow> a = 0 \<or> b = 0" using assms by auto
  then show ?thesis by (metis assms(1) assms(2))
qed