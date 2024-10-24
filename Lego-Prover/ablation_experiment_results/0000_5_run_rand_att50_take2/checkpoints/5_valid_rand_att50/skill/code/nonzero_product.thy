lemma nonzero_product:
  fixes a b :: real
  assumes h0: "a \<noteq> 0" and h1: "b \<noteq> 0"
  shows "a * b \<noteq> 0"
proof -
  have "a * b = 0 \<Longrightarrow> a = 0 \<or> b = 0" by (simp add: mult_eq_0_iff)
  then show ?thesis using assms by auto
qed