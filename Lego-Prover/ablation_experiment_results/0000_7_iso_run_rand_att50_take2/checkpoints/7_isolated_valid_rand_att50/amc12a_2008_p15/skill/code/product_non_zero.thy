lemma product_non_zero:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * b \<noteq> 0"
proof -
  have "a * b = 0 \<Longrightarrow> (a = 0 \<or> b = 0)" by auto
  thus ?thesis using assms by auto
qed